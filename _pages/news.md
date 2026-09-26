---
layout: archive
title: "News"
permalink: /posts/
author_profile: true
---

{% assign news = site.posts | where_exp: "post", "post.date <= site.time" | sort: "date" | reverse %}
{% for post in news %}
  {% include archive-single.html %}
{% endfor %}
