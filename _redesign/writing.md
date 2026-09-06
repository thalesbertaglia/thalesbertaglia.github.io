---
layout: default
title: Writing
permalink: /writing/
page_class: writing
description: Longer pieces and shorter research updates, collected in one place.
---

<div class="shell page-shell">
  <header class="page-header">
    <p class="eyebrow">Ideas, experiments, and updates</p>
    <h1>Writing</h1>
    <p class="page-description">Longer pieces and shorter research updates, collected in one place.</p>
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

  {% include updates-list.html heading='Updates' anchor='updates' %}
</div>
