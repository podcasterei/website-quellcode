---
title: Podcaster:innen
layout: default
---

# Podcaster:innen

{% for person in site.people %}

### {{ person.name }}

<i class="fa fa-twitter"></i> [@{{ person.twitter_handle }}](https://twitter.com/{{ person.twitter_handle }})

{% for podcast in person.podcasts %}

<i class="fa fa-headphones"></i> [{{ podcast.title }}]({{ podcast.url }}) &nbsp; &nbsp;
<script class="podlove-subscribe-button" src="https://cdn.podlove.org/subscribe-button/javascripts/app.js" data-language="de" data-size="small" data-json-data="podcastData1" data-colors="#FC6E51;green;blue" data-buttonid="1" data-hide="false"></script>

<script>
  window.podcastData1 = {
    "title": "{{ podcast.title }}",
    "feeds": [{"type": "audio", "format": "mp3",
               "url": "{{ podcast.feed_url }}"}]}
</script>

{% endfor %}

{% endfor %}