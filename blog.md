---
layout: layout_md.liquid
title: Open source key-value database on blockchain
permalink: blog.html
blogActive: active
pagination:
  data: collections.post
  size: 10
  reverse: true
  alias: posts
---

# Blog Posts

<img src="images/desktop-2325627_1920.jpg" class="img-fluid" alt="Bike Jump" style="margin-bottom: 0px"/>

{% for post in posts %}
  <article>
    <h2 class="kva-blog-list-title">
      <a href=".{{ post.url | url }}">{{ post.data.title }}</a>
    </h2>
    <p class="kva-blog-list-date">{{ post.date | date: '%B %d %Y' }}</p>
  </article>
{% endfor %}

<br>
<br>
<br>
<br>
---
<p class="kva-license-attr">
Image by <a href="https://pixabay.com/users/theglassdesk-149631/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=2325627">Becca Clark</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=2325627">Pixabay</a>
</p>