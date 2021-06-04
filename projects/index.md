---
layout: page
title: "Projects"
---

<i>{{ site.project_desc }}</i>

{% for thing in site.projects %}
  <h3><a href="{{ site.baseurl }}{{ thing.url }}">+ {{ thing.title }}</a></h3>
  <i>{{ thing.summary }}</i>
{% endfor %}
