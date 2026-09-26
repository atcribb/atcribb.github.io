---
permalink: /
title: "Hi, I'm Alison! 👋😄"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

👩‍💻 🪸 I am a palaeoecologist at the University of Oxford, primarily interested in applying quantitative palaeoecology approaches to conservation palaeobiology questions.

🌍 I am currently a Schmidt AI in Science Postdoctoral Fellow. My research focuses on mass extinctions, the evolutionary and ecological pathways that allow animals to survive, and how we can use machine learning and AI to identify survival strategies and apply them to the current climate crisis.

## News
{% assign news = site.posts | sort: "date" | reverse %}
{% for post in news limit:5 %}
- **{{ post.date | date: "%-d %B %Y" }}** — [{{ post.title }}]({{ post.url | relative_url }}){% if post.excerpt %}: {{ post.excerpt | strip_html | truncatewords: 35 }}{% endif %}
{% endfor %}

[View all news →]({{ "/posts/" | relative_url }})

## Recent publications

{% assign selected_publications = site.publications | where: "selected", true | sort: "date" | reverse %}
{% for publication in selected_publications limit:5 %}
- **[{{ publication.title }}]({{ publication.url | relative_url }})** — {{ publication.venue }}, {{ publication.date | date: "%Y" }}{% if publication.paperurl %} ([paper]({{ publication.paperurl }})){% endif %}
{% endfor %}

[View all publications →]({{ "/publications/" | relative_url }})