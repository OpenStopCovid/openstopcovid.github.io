---
layout: page
title: OpenStopCovid
subtitle: choose your language
ressources: Ressources
appmobile: Application mobile
uidoctor: Application médicale
uidoctordev: Application médicale (code)
appserv: Serveur de l'application
specs: Specifications
doc: Documentation
---

<div style="display:flex;">
{% for lang in site.langs %}
<a style="margin:5px;" href="{{lang}}">{{lang}}</a>
{% endfor %}
</div>
