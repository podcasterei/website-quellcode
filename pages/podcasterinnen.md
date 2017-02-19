---
title: Podcaster:innen
layout: default
permalink: podcasterinnen/
---

# Podcaster:innen


{% for person in site.people %}
* [{{ person.name }}]({{ person.url | prepend: site.baseurl }})
  {% for podcast in person.podcasts %} / {{ podcast.title }} {% endfor %}
{% endfor %}

<hr/>

Wenn Du in dieses Podcaster:innen-Verzeichnis aufgenommen werden willst, schreibe bitte ein Email an
<mail@podcasterei.at> mit folgenden Informationen

* Dein Name - so wie Du hier erscheinen willst
* Dein Twitter Handle
* Für jeden Deiner Podcasts:
  * Titel
  * URL des Webseite
  * URL des Feeds
* Eine Vorstellung Deiner Person (am liebsten in Markdown, aber auch plain Text ist voll OK - bitte keine Attachments!)

<hr/>

Das gleiche gilt auch, wenn Du bereits im Verzeichnis bist, aber andere Daten hinterlegt haben willst.

Solltest Du mit Git und Github vertraut sein, kannst Du auch einen Pull Request machen, deine Seite findest Du [hier](https://github.com/podcasterei/website-quellcode/tree/master/_people)