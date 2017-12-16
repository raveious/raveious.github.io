---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: home
---
{{ site.github.keys | inspect }}
<hr>
{{ site.github | inspect }}
<hr>
{% assign public_repositories = site.github.public_repositories | sort:"pushed_at" | reverse %}
{% for repo in public_repositories %}
{% include github-repo-card.html repo=repo %}
{% endfor %}
