---
layout: page
permalink: /blogs/index.html
title: Blogs
---

# Blogs

## Category Filters

<div class="blog-filters">
    <a href="#all" onclick="showAll()">📝 All</a>
    <a href="#diary" onclick="filterCategory('diary')">📔 Diary</a>
    <a href="#course" onclick="filterCategory('course')">📚 Courses</a>
    <a href="#research" onclick="filterCategory('research')">🔬 Research</a>
    <a href="#tech" onclick="filterCategory('tech')">💻 Tech</a>
    <a href="#life" onclick="filterCategory('life')">🌱 Life</a>
</div>

<script>
function showAll() {
    document.querySelectorAll('.blog-post').forEach(post => {
        post.style.display = 'block';
    });
}

function filterCategory(category) {
    document.querySelectorAll('.blog-post').forEach(post => {
        const postCategory = post.getAttribute('data-category');
        if (postCategory === category) {
            post.style.display = 'block';
        } else {
            post.style.display = 'none';
        }
    });
}
</script>

<div class="blog-filters">
    <div class="filter-buttons">
        <a href="#all" class="filter-btn active" onclick="showAll()">📝 All</a>
        <a href="#diary" class="filter-btn" onclick="filterCategory('diary')">📔 Diary</a>
        <a href="#course" class="filter-btn" onclick="filterCategory('course')">📚 Courses</a>
        <a href="#research" class="filter-btn" onclick="filterCategory('research')">🔬 Research</a>
        <a href="#tech" class="filter-btn" onclick="filterCategory('tech')">💻 Tech</a>
        <a href="#life" class="filter-btn" onclick="filterCategory('life')">🌱 Life</a>
    </div>
</div>div class="blog-filters">
    <div class="filter-buttons">
        <a href="#all" class="filter-btn active" onclick="showAll()">📝 All</a>
        <a href="#diary" class="filter-btn" onclick="filterCategory('diary')">📔 Diary</a>
        <a href="#course" class="filter-btn" onclick="filterCategory('course')">📚 Courses</a>
        <a href="#research" class="filter-btn" onclick="filterCategory('research')">🔬 Research</a>
        <a href="#tech" class="filter-btn" onclick="filterCategory('tech')">💻 Tech</a>
        <a href="#life" class="filter-btn" onclick="filterCategory('life')">🌱 Life</a>
    </div>
</div> background: #f8f9fa;
    padding: 20px;
    border-radius: 8px;
    margin-bottom: 30px;
}

.filter-buttons {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    margin-bottom: 15px;
}

.filter-btn {
    padding: 8px 16px;
    border: 1px solid #ddd;
    background: white;
    border-radius: 20px;
    cursor: pointer;
    transition: all 0.3s;
    text-decoration: none;
    color: #333;
}

.filter-btn:hover, .filter-btn.active {
    background: #007bff;
    color: white;
    border-color: #007bff;
    text-decoration: none;
}

.blog-post {
    border: 1px solid #eee;
    border-radius: 8px;
    padding: 20px;
    margin-bottom: 20px;
    background: white;
}

.post-meta {
    color: #666;
    font-size: 0.9em;
    margin-bottom: 10px;
}

.post-title {
    margin: 0 0 10px 0;
    color: #333;
}

.post-title a {
    color: #333;
    text-decoration: none;
}

.post-title a:hover {
    color: #007bff;
}

.post-summary {
    color: #666;
    margin-bottom: 10px;
}

.post-tags {
    margin-top: 10px;
}

.tag {
    display: inline-block;
    padding: 2px 8px;
    background: #e9ecef;
    border-radius: 12px;
    font-size: 0.8em;
    margin-right: 5px;
}
</style>

## 博客分类筛选

<div class="blog-filters">
    <div class="filter-buttons">
        <a href="#all" class="filter-btn active" onclick="showAll()">📝 全部</a>
        <a href="#diary" class="filter-btn" onclick="filterCategory('diary')">� 日记</a>
        <a href="#course" class="filter-btn" onclick="filterCategory('course')">📚 课程专栏</a>
        <a href="#research" class="filter-btn" onclick="filterCategory('research')">🔬 研究笔记</a>
        <a href="#tech" class="filter-btn" onclick="filterCategory('tech')">💻 技术分享</a>
        <a href="#life" class="filter-btn" onclick="filterCategory('life')">🌱 生活感悟</a>
    </div>
</div>

<script>
function showAll() {
    document.querySelectorAll('.blog-post').forEach(post => {
        post.style.display = 'block';
    });
    updateActiveButton(event.target);
}

function filterCategory(category) {
    document.querySelectorAll('.blog-post').forEach(post => {
        const postCategory = post.getAttribute('data-category');
        if (postCategory === category) {
            post.style.display = 'block';
        } else {
            post.style.display = 'none';
        }
    });
    updateActiveButton(event.target);
}

function updateActiveButton(activeBtn) {
    document.querySelectorAll('.filter-btn').forEach(btn => {
        btn.classList.remove('active');
    });
    activeBtn.classList.add('active');
}
</script>

## Recent Posts

{% for post in site.posts limit:10 %}
<div class="blog-post" data-category="{{ post.category }}">
    <div class="post-meta">
        {% if post.category == 'diary' %}📔 Diary{% endif %}
        {% if post.category == 'course' %}📚 Courses{% endif %}
        {% if post.category == 'research' %}🔬 Research{% endif %}
        {% if post.category == 'tech' %}💻 Tech{% endif %}
        {% if post.category == 'life' %}🌱 Life{% endif %}
        | 📅 {{ post.date | date: "%Y-%m-%d" }}
    </div>
    <h3 class="post-title"><a href="{{ post.url }}">{{ post.title }}</a></h3>
    <div class="post-summary">{{ post.excerpt | strip_html | truncatewords: 30 }}</div>
    <div class="post-tags">
        {% for tag in post.tags %}
        <span class="tag">{{ tag }}</span>
        {% endfor %}
    </div>
</div>
{% endfor %}

<!-- If no posts yet, show example -->
{% if site.posts.size == 0 %}
<div class="blog-post" data-category="diary">
    <div class="post-meta">📔 Diary | 📅 2025-09-06</div>
    <h3 class="post-title"><a href="/blogs/diary/2025-09-06-start/">Starting My Learning Journey</a></h3>
    <div class="post-summary">Today I began building my personal learning website to record my daily progress and thoughts...</div>
    <div class="post-tags">
        <span class="tag">Personal Growth</span>
        <span class="tag">Website Building</span>
    </div>
</div>
{% endif %}

---

## Categories

### 📔 Diary
Daily learning, thoughts, and personal growth journey
{% for post in site.categories.diary limit:5 %}
- [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%Y-%m-%d" }}<br>
{% endfor %}

### 📚 Course Columns
Learning notes and insights organized by courses

#### 🧮 Mathematics Courses
{% for post in site.categories.math limit:3 %}
- [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%Y-%m-%d" }}<br>
{% endfor %}

#### 💻 Computer Science Courses  
{% for post in site.categories.cs limit:3 %}
- [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%Y-%m-%d" }}<br>
{% endfor %}

#### 🔬 Specialized Courses
{% for post in site.categories.course limit:3 %}
- [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%Y-%m-%d" }}<br>
{% endfor %}

### 🔬 Research Notes
Research ideas, progress, and literature reading notes
{% for post in site.categories.research limit:5 %}
- [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%Y-%m-%d" }}<br>
{% endfor %}

### 💻 Technical Sharing
Programming skills, tools, and technical exploration
{% for post in site.categories.tech limit:5 %}
- [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%Y-%m-%d" }}<br>
{% endfor %}

### 🌱 Life Reflections
Personal thoughts, insights, and life experiences
{% for post in site.categories.life limit:5 %}
- [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%Y-%m-%d" }}<br>
{% endfor %}

---

## Archives

### 2025
<!-- Add 2025 articles by month -->

### 2024
<!-- Add 2024 articles by month -->

<br>

## Leave a Message

<br>

{% include disqus.html %} 

<br>
