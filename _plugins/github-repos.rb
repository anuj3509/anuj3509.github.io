require 'httparty'
require 'jekyll'
require 'json'

# Fetches GitHub profile and repository metadata at build time and exposes it as
# site.data['github'] for the repository cards. This replaces the third-party
# image services (github-readme-stats, github-profile-trophy) that are no longer
# publicly available.
#
# Set GITHUB_TOKEN to raise the API rate limit (60 requests/hour unauthenticated).
module GitHubRepos
  class Generator < Jekyll::Generator
    safe true
    priority :high

    API = 'https://api.github.com'.freeze
    CACHE_TTL = 3600 # seconds

    def generate(site)
      config = site.data['repositories'] || {}
      users = config['github_users'] || []
      repos = config['github_repos'] || []
      return if users.empty? && repos.empty?

      @cache_file = site.in_source_dir('.jekyll-cache', 'github-api.json')
      @cache = load_cache

      site.data['github'] = {
        'users' => users.to_h { |u| [u, fetch("/users/#{u}")] },
        'repos' => repos.to_h { |r| [r, fetch("/repos/#{r}")] }
      }

      save_cache
    end

    private

    def fetch(path)
      cached = @cache[path]
      return cached['data'] if cached && Time.now.to_i - cached['fetched_at'] < CACHE_TTL

      headers = { 'User-Agent' => 'jekyll-github-repos', 'Accept' => 'application/vnd.github+json' }
      headers['Authorization'] = "Bearer #{ENV['GITHUB_TOKEN']}" if ENV['GITHUB_TOKEN']
      response = HTTParty.get("#{API}#{path}", headers: headers, timeout: 10)

      if response.code == 200
        @cache[path] = { 'fetched_at' => Time.now.to_i, 'data' => response.parsed_response }
        response.parsed_response
      else
        Jekyll.logger.warn 'GitHub:', "#{path} returned HTTP #{response.code}; using cached data if available"
        cached && cached['data']
      end
    rescue StandardError => e
      Jekyll.logger.warn 'GitHub:', "#{path} failed (#{e.message}); using cached data if available"
      cached && cached['data']
    end

    def load_cache
      File.exist?(@cache_file) ? JSON.parse(File.read(@cache_file)) : {}
    rescue JSON::ParserError
      {}
    end

    def save_cache
      FileUtils.mkdir_p(File.dirname(@cache_file))
      File.write(@cache_file, JSON.generate(@cache))
    end
  end
end
