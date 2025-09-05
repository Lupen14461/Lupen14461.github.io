---
layout: page
permalink: /blogs/index.html
title: Blogs
---

# Blogs

<style>
.blog-filters {
    background: #f8f9fa;
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

## Category Filters

<div class="blog-filters">
    <div class="filter-buttons">
        <a href="#all" class="filter-btn active" onclick="showAll()">📝 All</a>
        <a href="#diary" class="filter-btn" onclick="filterCategory('diary')">📔 Diary</a>
        <a href="#course" class="filter-btn" onclick="filterCategory('course')">📚 Courses</a>
        <a href="#research" class="filter-btn" onclick="filterCategory('research')">🔬 Research</a>
        <a href="#tech" class="filter-btn" onclick="filterCategory('tech')">💻 Tech</a>
        <a href="#life" class="filter-btn" onclick="filterCategory('life')">🌱 Life</a>
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

<!-- Example post format - add your posts following this structure -->
<div class="blog-post" data-category="diary">
    <div class="post-meta">📔 Diary | 📅 2025-09-06</div>
    <h3 class="post-title"><a href="/blogs/diary/2025-09-06-start/">Starting My Learning Journey</a></h3>
    <div class="post-summary">Today I began building my personal learning website to record my daily progress and thoughts...</div>
    <div class="post-tags">
        <span class="tag">Personal Growth</span>
        <span class="tag">Website Building</span>
    </div>
</div>

<!-- Add more posts here following the above format -->

---

## Categories

### 📔 Diary
Daily learning, thoughts, and personal growth journey
<!-- Add diary post links here -->

### 📚 Course Columns
Learning notes and insights organized by courses

#### 🧮 Mathematics Courses
<!-- Add mathematics course notes links here -->

#### 💻 Computer Science Courses  
<!-- Add computer science course notes links here -->

#### 🔬 Specialized Courses
<!-- Add specialized course notes links here -->

### 🔬 Research Notes
Research ideas, progress, and literature reading notes
<!-- Add research notes links here -->

### 💻 Technical Sharing
Programming skills, tools, and technical exploration
<!-- Add technical articles links here -->

### 🌱 Life Reflections
Personal thoughts, insights, and life experiences
<!-- Add life reflection articles links here -->

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
