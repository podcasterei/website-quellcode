---
layout: post
title: Podcast Publishing und HTTPS
date: 2017-01-05 10:00:00 +0200
author: Stefan Haslinger
---


# Podcast Publishing und HTTPs

### Warum will man als Podcaster:in Podcasts per HTTPS ausliefern?

Kurz: Um die Privatsphäre der Hörer:innen zu schützen.

So schön es ist, wenn wir Feedback auf unsere Podcasts erhalten und vielleicht gar die Menschen zu
diesem Feedback im realen Leben kennenlernen, so sehr sehe ich es als Recht der
Hörer:innen anynym zu bleiben. Und zwar anonym gegenüber uns Podcaster:innen, aber auch anonym
gegenüber den Providern, die wir verwenden, um unsere Dienste zur Verfügung zu stellen und zu
konsumieren, als auch gegenüber Institutionen, die die Kommunikation im Internet - gleich ob
berechtigt oder nicht - überwachen.

Während in einem Mitschnitt einer unverschlüsselten Kommunikation klar für jeden am Weg zu erkennen
ist, dass ich hier einen Podcast mit sensiblem Inhalt gehört habe:

```
GET /podcast_mit_sensiblem_inhalt.opus HTTP/1.1
Host: aua-uff-co.de
Connection: keep-alive
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (X11; Linux x86_64)
            AppleWebKit/537.36 (KHTML, like Gecko)
            Chrome/49.0.2623.75 Safari/537.36
Accept-Encoding: gzip, deflate, sdch
Accept-Language: en-US,en;q=0.8,de;q=0.6,en-GB;q=0.4
```

ist dies in der verschlüsselten Form per
[HTTPS](https://de.wikipedia.org/wiki/Hypertext_Transfer_Protocol_Secure)
nicht mehr der Fall:

```
km3(;kO >"b-hLqN}7NC{~d+/
5/
3th2spdy/3.1http/1.1uP~dJKQApYw)6][lgD~O5Ce6xMUbxGGL8}
F
(9+&}N'Rf^7Fb@8
1o-U)D}25T
i@;+~+8]8y-HG1kdvh?wh*]9s@Iy'VT)Wt4K\IYQ/U57Y`'X<=GZJoo/vX1H3D~,f^G::Yu@GH$JuMfen)?kncJ4x,
tAg*6gK<En+-KT:>z%(K8i$UwI@z1tr8%fK:d^K&i
```

### Und was ist nun besser?

Viele Podcaster:innen verzichteten ganz auf die Auslieferung ihrer Podcasts per HTTPS oder lieferten
wenigstens ihre Episoden und Bilder auch per HTTP (ohne S) aus, da sie sich ein teures Zertifikat
nicht leisten konnten oder wollten, aber ihre Podcasts per Itunes publizieren wollten.

Seit einigen Monation gibt es auch kostenlose Zertifikate durch
[Let's Encrypt](https://letsencrypt.org/), nur wurden diese von Itunes und Itunes Connect nicht
richtig verarbeitet. Dies ist nun wenigstens seit 16.Dezember Geschichte.

Ich bin darauf im Sendegate Post [Apple iTunes akzeptiert Let’s Encrypt Zertifikate](https://sendegate.de/t/apple-itunes-akzeptiert-lets-encrypt-zertifikate/4536) aufmerksam geworden, habe die Original
Quelle in FeedPress
[Apple Silently Adds Support for Let’s Encrypt Certificates on Podcast Feeds](https://feed.press/blog/2016/12/16/apple-silently-adds-support-lets-encrypt-certificates-podcast-feeds/)
gelesen und nun meine eigenen Podcasts umgestellt: Mit Erfolg, zum Beispiel ist
[Aua-Uff-Code!](https://aua-uff-co.de/) nun HTTPS-only.

Damit stehen einer Publizierung unserer Webseites, Podcasts und Episoden ausschließlich per HTTPS
keine Kosten mehr im Weg.

Happy Podcasting!