---
layout: default
title: CV
permalink: /cv/
page_class: cv
description: Curriculum vitae for Thales Bertaglia.
---

{% assign resume = site.data.resume %}
<div class="shell page-shell cv-page">
  <header class="page-header">
    <p class="eyebrow">Curriculum vitae</p>
    <h1>{{ resume.basics.name }}</h1>
    <p class="page-description">{{ resume.basics.role }}. {{ resume.basics.summary }}</p>
    <p class="cv-contact"><a href="mailto:{{ resume.basics.email }}">{{ resume.basics.email }}</a> · {{ resume.basics.location.city }}, {{ resume.basics.location.countryCode }}</p>
    {% if resume.basics.profiles.size > 0 %}
      <p class="cv-contact">
        {% for profile in resume.basics.profiles %}<a href="{{ profile.url }}" rel="me noopener noreferrer">{{ profile.network }}</a>{% unless forloop.last %} · {% endunless %}{% endfor %}
      </p>
    {% endif %}
  </header>

  <section class="cv-section" aria-labelledby="experience-title">
    <h2 id="experience-title">Experience</h2>
    <ol class="cv-list">
      {% for item in resume.work %}
        <li>
          <div class="cv-date">{{ item.startDate | date: '%Y' }}–{% if item.endDate %}{{ item.endDate | date: '%Y' }}{% else %}present{% endif %}</div>
          <div>
            <h3>{{ item.position }}</h3>
            <p class="cv-organisation">{% if item.url %}<a href="{{ item.url }}" rel="noopener noreferrer">{{ item.name }}</a>{% else %}{{ item.name }}{% endif %}</p>
            {% if item.summary %}<div class="cv-summary">{{ item.summary }}</div>{% endif %}
          </div>
        </li>
      {% endfor %}
    </ol>
  </section>

  <section class="cv-section" aria-labelledby="education-title">
    <h2 id="education-title">Education</h2>
    <ol class="cv-list">
      {% for item in resume.education %}
        <li>
          <div class="cv-date">{{ item.startDate | date: '%Y' }}–{{ item.endDate | date: '%Y' }}</div>
          <div>
            <h3>{{ item.studyType }}</h3>
            <p class="cv-organisation">{{ item.institution }} · {{ item.location }}</p>
            {% if item.area %}<div class="cv-summary">{{ item.area }}</div>{% endif %}
          </div>
        </li>
      {% endfor %}
    </ol>
  </section>

  <section class="cv-section" aria-labelledby="awards-title">
    <h2 id="awards-title">Awards &amp; scholarships</h2>
    <ol class="cv-list cv-awards">
      {% for item in resume.awards %}
        <li>
          <div class="cv-date">{{ item.date }}</div>
          <div>
            <h3>{{ item.title }}</h3>
            <p class="cv-organisation">{{ item.awarder }}</p>
            {% if item.summary %}<p class="cv-summary">{{ item.summary }}</p>{% endif %}
          </div>
        </li>
      {% endfor %}
    </ol>
  </section>

  {% if resume.certificates.size > 0 %}
    <section class="cv-section" aria-labelledby="certificates-title">
      <h2 id="certificates-title">Certificates</h2>
      <ol class="cv-list">
        {% for item in resume.certificates %}
          <li>
            <div class="cv-date">{{ item.date | date: '%Y' }}</div>
            <div>
              <h3>{% if item.url %}<a href="{{ item.url }}" rel="noopener noreferrer">{{ item.name }}</a>{% else %}{{ item.name }}{% endif %}</h3>
              <p class="cv-organisation">{{ item.issuer }}</p>
            </div>
          </li>
        {% endfor %}
      </ol>
    </section>
  {% endif %}

  {% if resume.skills.size > 0 %}
    <section class="cv-section" aria-labelledby="skills-title">
      <h2 id="skills-title">Skills</h2>
      <ul class="cv-list cv-compact">
        {% for item in resume.skills %}
          <li>
            <div class="cv-date">{{ item.level }}</div>
            <div><h3>{{ item.name }}</h3><p class="cv-summary">{{ item.keywords | join: ' · ' }}</p></div>
          </li>
        {% endfor %}
      </ul>
    </section>
  {% endif %}

  {% if resume.languages.size > 0 %}
    <section class="cv-section" aria-labelledby="languages-title">
      <h2 id="languages-title">Languages</h2>
      <ul class="cv-list cv-compact">
        {% for item in resume.languages %}
          <li><div class="cv-date">{{ item.fluency }}</div><div><h3>{{ item.language }}</h3></div></li>
        {% endfor %}
      </ul>
    </section>
  {% endif %}

  {% if resume.projects.size > 0 %}
    <section class="cv-section" aria-labelledby="projects-title">
      <h2 id="projects-title">Projects</h2>
      <ol class="cv-list">
        {% for item in resume.projects %}
          <li>
            <div class="cv-date">{{ item.startDate | date: '%Y' }}{% if item.endDate %}–{{ item.endDate | date: '%Y' }}{% endif %}</div>
            <div>
              <h3>{% if item.url %}<a href="{{ item.url }}" rel="noopener noreferrer">{{ item.name }}</a>{% else %}{{ item.name }}{% endif %}</h3>
              {% if item.summary %}<p class="cv-summary">{{ item.summary }}</p>{% endif %}
              {% if item.highlights.size > 0 %}<p class="cv-organisation">{{ item.highlights | join: ' · ' }}</p>{% endif %}
            </div>
          </li>
        {% endfor %}
      </ol>
    </section>
  {% endif %}

  {% if resume.interests.size > 0 %}
    <section class="cv-section" aria-labelledby="interests-title">
      <h2 id="interests-title">Interests</h2>
      <ul class="cv-list cv-compact">
        {% for item in resume.interests %}
          <li><div></div><div><h3>{{ item.name }}</h3><p class="cv-summary">{{ item.keywords | join: ' · ' }}</p></div></li>
        {% endfor %}
      </ul>
    </section>
  {% endif %}

  {% if resume.references.size > 0 %}
    <section class="cv-section" aria-labelledby="references-title">
      <h2 id="references-title">References</h2>
      <ul class="cv-list cv-compact">
        {% for item in resume.references %}
          <li><div></div><div><h3>{{ item.name }}</h3><p class="cv-summary">{{ item.reference }}</p></div></li>
        {% endfor %}
      </ul>
    </section>
  {% endif %}
</div>
