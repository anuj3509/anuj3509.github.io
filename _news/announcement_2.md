---
layout: post
title: Developed a Movie Recommendation System
date: 2024-12-12 16:11:00-0400
inline: false
related_posts: false
---

Developing Scalable Solutions for Personalized Movie Recommendations using Neural Collaborative Filtering

---

With the exponential growth of digital media, effective recommendation systems have become essential for guiding users toward relevant content. This project introduces a **movie recommendation system** using **Neural Collaborative Filtering (NCF)**, combined with distributed big data frameworks for scalability.

Leveraging the **MovieLens 1M dataset**, which contains over 1 million ratings from 6,040 users across 3,952 movies, our system captures intricate user-movie relationships using deep learning. We employed **Apache Spark** to process large datasets efficiently and built a web-based dashboard for interactive exploration of recommendations.

#### Highlights:

- **Neural Collaborative Filtering**: Utilizes deep learning to model user and item embeddings, replacing traditional collaborative filtering.
- **Negative Sampling**: Introduced a 4:1 ratio of negative to positive samples for better training efficiency.
- **Scalable Frameworks**: Implemented distributed data processing using Apache Spark.
- **Interactive Dashboard**: Built with Streamlit, allowing users to explore recommendations and analyze data.
- **Evaluation Metrics**: Achieved a Hit Ratio @ 10 of 50%, showcasing the effectiveness of the model.

#### Key Insights:

1. NCF demonstrated superior performance compared to traditional methods, especially in capturing non-linear relationships.
2. Distributed frameworks like Apache Spark proved essential for handling the scale of the MovieLens dataset.
3. Dataset sparsity was addressed effectively through negative sampling, enhancing model learning.

#### Technologies Used:

- **Deep Learning**: PyTorch, PyTorch Lightning for training and model optimization.
- **Big Data**: Apache Spark for distributed data processing.
- **Visualization**: Streamlit for building an interactive recommendation dashboard.
- **Database**: SQLite for storing movie data, ratings, and recommendations.

> Check out the full source code and implementation on GitHub: <a href="https://github.com/anuj3509/RecommenderX">RecommenderX Repository</a>

#### Future Enhancements:

1. Incorporate multimodal data like user reviews and movie trailers to enrich recommendations.
2. Experiment with hybrid models combining collaborative and content-based approaches.
3. Explore reinforcement learning to create adaptive recommendation systems based on user behavior.

---

##### Feedback and Contributions:

Your insights are invaluable. Feel free to test the model, share feedback, or contribute improvements via a pull request: <a href="https://github.com/anuj3509/RecommenderX/pulls">Pull Requests</a>
