---
layout: default
title: Thinking
---
thoughts here and there

I also have a column at the Stanford Daily, check out [*Traveler, your (digital) Footprints*](https://stanforddaily.com/author/chueryang/)  

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
      <small>{{ post.date | date: "%B %-d, %Y" }}</small>
    </li>
  {% endfor %}
</ul>

ponderings in progress:
- Nuclear energy
- Rationalistic intuition
- Golden dreams under a geodesic dome





