---
layout: default
permalink: blog/
---

<div class="home">
  <h1 class="page-heading">Blog</h1>

  <p class="rss-subscribe">als RSS-Feed <a href="{{ "/feed.xml" | prepend: site.baseurl }}"> abbonieren</a></p>
  <br/>
  <ul class="list-group">
    {% for post in site.posts %}
      <li class="list-group-item">
        <a class="post-link"
	   href="{{ post.url | prepend: site.baseurl }}">
          {{ post.title }}
        </a> -
        {% assign m = post.date | date: "%-m" %}
        {{ post.date | date: "%-d" }}.
        {% case m %}
          {% when '1' %}Jänner
          {% when '2' %}Februar
          {% when '3' %}März
          {% when '4' %}April
          {% when '5' %}Mai
          {% when '6' %}Juni
          {% when '7' %}Juli
          {% when '8' %}August
          {% when '9' %}September
          {% when '10' %}Oktober
          {% when '11' %}November
          {% when '12' %}Dezember
        {% endcase %}
        {{ post.date | date: "%Y" }}
      </li>
    {% endfor %}
  </ul>

  <p class="rss-subscribe">als RSS-Feed <a href="{{ "/feed.xml" | prepend: site.baseurl }}"> abbonieren</a></p>
</div>
