---
layout: default
permalink: meetups/
---

<div class="home">
  <h1 class="page-heading">Meetups</h1>

  Die Meetups werden auf einer
  <a href="https://www.meetup.com/de-DE/Podcasting-Meetup-Osterreich/">Meetup-Seite</a> organisiert.<br/><br/>

  <ul class="list-group">
    {% for meetup in site.meetups %}
      <li class="list-group-item">
        <a class="meetup-link"
     href="{{ meetup.url | prepend: site.baseurl }}">
          {{ meetup.title }}
        </a> -
        {% assign m = meetup.date | date: "%-m" %}
        {{ meetup.date | date: "%-d" }}.
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
        {{ meetup.date | date: "%Y" }}
      </li>
    {% endfor %}
  </ul>
</div>
