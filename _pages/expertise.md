---
layout: archive
title: "Expertise"
permalink: /expertise/
author_profile: true
---

{% include base_path %}

<style>
  .archive {
    width: 80%;
    margin: 0 auto;
    float: none;
    padding-right: 0;
  }
  
  @media (min-width: 80em) {
    .archive {
      width: 70%;
    }
  }
</style>

{% assign cv = site.data.cv %}

{% if cv.skills.size > 0 %}
<div class="cv-container">
  <div class="cv-section">
    <div class="cv-skills">
      {% for skill in cv.skills %}
      <div class="cv-skill-category">
        <h3>{{ skill.name }}</h3>
        <ul class="cv-skill-list">
          {% for keyword in skill.keywords %}
          <li>{{ keyword }}</li>
          {% endfor %}
        </ul>
      </div>
      {% endfor %}
    </div>
  </div>
</div>
{% endif %}
