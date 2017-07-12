---
layout: page
which: "title"
title: Welcome to our journey!
icon: fa-star
banner-img: "https://www.roadtopatagonia.net/pics/headers/page_home.jpg"
tagline: testing out the waters...
---

<ul class="listing">
	{% for post in site.categories["blog"] %}
		<li class="blog-list">
			<span>{{ post.date | date: "%-d %B %Y" }}</span>
			<a href="{{ post.url }}">{{ post.title }}</a>
		</li>
	{% endfor %}
</ul>