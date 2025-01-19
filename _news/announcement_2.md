---
layout: post
title: Developed a Scalable Movie Recommendation System
date: 2024-12-12 16:11:00-0400
inline: false
related_posts: false
---

## Revolutionizing Movie Recommendations with Neural Networks

---

The exponential growth of digital media has created an overwhelming amount of content, making effective recommendation systems essential for guiding users to relevant movies. In this project, we developed a **scalable movie recommendation system** using **Neural Collaborative Filtering (NCF)** and integrated it with distributed big data frameworks to handle large datasets efficiently.

The project used the **MovieLens 1M dataset**, containing over 1 million ratings from 6,040 users across 3,952 movies. Our system leverages **deep learning models** to replace traditional collaborative filtering methods, effectively capturing complex, nonlinear user-movie interactions. We also incorporated **Apache Spark** for distributed data processing to ensure scalability.

### Key Features:

- **Deep Learning Models**: Neural Collaborative Filtering (NCF) to learn user and movie embeddings.
- **Negative Sampling**: Balancing the dataset by introducing a 4:1 ratio of negative to positive samples for better learning.
- **Distributed Frameworks**: Use of Apache Spark to handle large-scale data efficiently.
- **Evaluation**: Hit Ratio @ 10 metric achieved a score of **50%**, demonstrating the system's effectiveness in personalized recommendations.

---

### Insights:

1. NCF outperformed traditional collaborative filtering by capturing higher-order relationships in user-item interactions.
2. The system successfully scaled for big data using **Apache Spark**.
3. Addressed dataset sparsity through negative sampling techniques.

---

> Explore the complete code and models on GitHub:  
> <a href="https://github.com/anuj3509/RecommenderX">Project Repository</a>

#### Feedback and Collaboration:

Your feedback helps us improve. Feel free to test the model and suggest improvements by submitting a pull request to the repository above.

---

### Future Work:

1. Incorporate **multimodal data** like user reviews or movie trailers.
2. Explore hybrid models combining collaborative filtering with content-based techniques.
3. Use reinforcement learning to adapt recommendations dynamically based on user behavior.
