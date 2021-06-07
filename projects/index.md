---
layout: page
title: "Projects"
---

<i>{{ site.project_desc }}</i>

{% for thing in site.projects %}
  <h3 style="font-size:21px"><a href="{{ site.baseurl }}{{ thing.url }}">+ {{ thing.title }}</a></h3>
  <div style="text-align:right;margin-right:2rem;margin-left:1em;font-size:17px">
  <i style="color:#A09FA0">{{ thing.summary }}</i>
  </div>
  <hr/>
{% endfor %}
