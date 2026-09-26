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

## Selected publications

{% assign selected_publications = site.publications | where: "selected", true | sort: "date" | reverse %}
{% for publication in selected_publications %}
- **[{{ publication.title }}]({{ publication.url | relative_url }})** — {{ publication.venue }}, {{ publication.date | date: "%Y" }}{% if publication.paperurl %} ([paper]({{ publication.paperurl }})){% endif %}
{% endfor %}

[View all publications →]({{ "/publications/" | relative_url }})


## Highlight links

[Read our new paper on the effects on bioturbators and reef-builders on biodiversity throughout the Phanerozoic](https://rdcu.be/7KQ3AKXBsJMa)

[Keep an eye on Life and Planet 2027 info and check out the 2026 programme!](https://lifeandplanet.com)

[Join us on November 19th for the 5th Early Career Research Symposium of the International Fosil Coral and Reef Society (virtual meeting)!](https://ifcrs.org/ecrs/)

[Read our new paper on 'Earth system engineering' and ecosystem engineering in deep time](https://www.cell.com/trends/ecology-evolution/fulltext/S0169-5347(25)00226-5)
