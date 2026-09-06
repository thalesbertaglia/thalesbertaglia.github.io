---
layout: page
title: Research
permalink: /research/
eyebrow: Research themes
description: I am interested in how platforms and AI systems organise information, commercial influence, and access—and in the methodological problem of studying systems that are constantly changing and only partly observable.
---

<div class="research-themes">
  {% for theme in site.data.research %}
    <section class="research-theme">
      <span class="theme-number" aria-hidden="true">0{{ forloop.index }}</span>
      <div>
        <h2>{{ theme.title }}</h2>
        <p>{{ theme.description }}</p>
        {% case forloop.index %}
          {% when 1 %}
            <p class="related-work"><span>Related work</span><a href="{{ '/publications/#bertaglia2025disclosures' | relative_url }}">Influencer self-disclosure practices on Instagram</a> · <a href="{{ '/publications/#phdthesis' | relative_url }}">Decoding digital influence</a></p>
          {% when 2 %}
            <p class="related-work"><span>Related work</span><a href="{{ '/publications/#annabell2025tiktok' | relative_url }}">TikTok search recommendations</a> · <a href="{{ '/publications/#gui2025evaluating' | relative_url }}">LLM-generated legal explanations</a></p>
          {% when 3 %}
            <p class="related-work"><span>Related work</span><a href="{{ '/publications/#goanta2025great' | relative_url }}">The Great Data Standoff</a> · <a href="{{ '/publications/#annabell2025tiktok' | relative_url }}">TikTok search recommendations</a></p>
        {% endcase %}
      </div>
    </section>
  {% endfor %}
</div>

<section class="methods-note" aria-labelledby="methods-title">
  <h2 id="methods-title">Methods</h2>
  <p>Across these projects, I use methods from NLP, machine learning, and computational social science, often in collaboration with legal researchers. I also work on the less tidy part of interdisciplinary research: turning concepts from law and policy into things that can actually be measured, while keeping track of what gets lost in the process.</p>
</section>
