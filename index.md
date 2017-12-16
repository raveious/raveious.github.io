---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: home
---
{{ site.github.keys | inspect }}
<hr>
{{ site.github.public_repositories | inspect }}
<hr>
{% assign public_repositories = site.github.public_repositories | sort:"pushed_at" | reverse %}
{% for repo in public_repositories %}
{{ repo.full_name }}

{{ repo.description }}

{{ repo.pushed_at }}

[![GitHub watchers](https://img.shields.io/github/watchers/{{ repo.full_name }}.svg?style=social&label=Watch)]({{ repo.html_url }})
[![GitHub stars](https://img.shields.io/github/stars/{{ repo.full_name }}.svg?style=social&label=Stars)]({{ repo.html_url }})
[![GitHub forks](https://img.shields.io/github/forks/{{ repo.full_name }}.svg?style=social&label=Fork)]({{ repo.html_url }})

{% if repo.homepage %}
{{ repo.homepage }}
{% elsif repo.has_pages %}
https://{{ repo.owner.login }}.github.io/{{ repo.name }}
{% endif %}
{% endfor %}
