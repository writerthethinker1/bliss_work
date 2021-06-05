---
layout: page
title: "Projects"
---

<i>{{ site.project_desc }}</i>

{% for thing in site.projects %}
  <h3><a href="{{ site.baseurl }}{{ thing.url }}">+ {{ thing.title }}</a></h3>
  <div style="text-align:right">
  <i style="color:#818082">{{ thing.summary }}</i>
  </div>
  <hr/>
{% endfor %}
