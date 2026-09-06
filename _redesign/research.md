---
layout: page
title: Research
permalink: /research/
eyebrow: Research themes
description: My work combines computational social science, digital governance, and legal perspectives to study social media platforms and the creator economy.
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
            <p class="related-work"><a href="{{ '/publications/#bertaglia2025disclosures' | relative_url }}">Influencer self-disclosure practices on Instagram</a> · <a href="{{ '/publications/#phdthesis' | relative_url }}">Decoding digital influence</a></p>
          {% when 2 %}
            <p class="related-work"><a href="{{ '/publications/#goanta2025great' | relative_url }}">The Great Data Standoff</a> · <a href="{{ '/publications/#annabell2025tiktok' | relative_url }}">TikTok search recommendations</a></p>
          {% when 3 %}
            <p class="related-work"><a href="{{ '/publications/#bauer2025towards' | relative_url }}">Fairness in Dutch hate-speech detection</a> · <a href="{{ '/publications/#bertaglia2023sexism' | relative_url }}">Sexism in Focus</a></p>
          {% when 4 %}
            <p class="related-work"><a href="{{ '/publications/#gui2025evaluating' | relative_url }}">LLM-generated legal explanations</a> · <a href="{{ '/publications/#bertaglia2023closing' | relative_url }}">Closing the Loop</a></p>
        {% endcase %}
      </div>
    </section>
  {% endfor %}
</div>

