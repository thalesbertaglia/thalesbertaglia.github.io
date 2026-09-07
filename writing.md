---
layout: default
title: Writing
permalink: /writing/
page_class: writing
description: Longer essays, reflections, and pieces of writing.
---

<div class="shell page-shell">
  <header class="page-header">
    <p class="eyebrow">Essays and reflections</p>
    <h1>Writing</h1>
    <p class="page-description">Longer essays, reflections, and pieces of writing.</p>
  </header>

  {% if site.posts.size > 0 %}
    <section class="writing-index" aria-labelledby="writing-title">
      <div class="section-heading">
        <h2 id="writing-title">Recent writing</h2>
      </div>
      <ol class="writing-list">
        {% for post in site.posts %}
          <li>
            <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: '%d %b %Y' }}</time>
            <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
            {% if post.description %}<p>{{ post.description }}</p>{% endif %}
          </li>
        {% endfor %}
      </ol>
    </section>
  {% endif %}

</div>
