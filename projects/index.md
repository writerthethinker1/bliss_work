---
layout: page
title: "Projects"
---

<i style="color:#7F7E80">{{ site.project_desc }}</i>

<hr/>

{% for thing in site.projects %}
  <h3 style="font-size:23px"><a href="{{ site.baseurl }}{{ thing.url }}">+ {{ thing.title }}</a></h3>
  {% if thing.summary %}
  <div style="text-align:right;margin-right:2rem;margin-left:1em;font-size:21px">
  <i style="color:#A09FA0">{{ thing.summary }}</i>
  </div>
  {% endif %}
  <hr/>
{% endfor %}
