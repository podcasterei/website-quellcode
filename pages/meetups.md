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

# Talks & Presentationen

* [7.Meetup](/meetup7) - Einleitung zum Podcasting Treffen 7 am 24.2.2017, Wien, Sektor 5
* [8.Meetup](/meetup8) - Einleitung zum Podcasting Treffen 8 am 28.4.2017, Wien, Sektor 5
* [9.Meetup](/meetup9) - Einleitung zum Podcasting Treffen 9 am 13.10.2017, Wien, Sektor 5
* [11.Meetup](/meetup11) - Einleitung zum Podcasting Treffen 11 am 2.2.2018, Wien, fjum / Nice Guys