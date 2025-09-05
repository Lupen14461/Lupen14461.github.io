# My Personal Website

This is the repository for my personal website built with Jekyll and hosted on GitHub Pages.

## 🚀 Quick Start Guide

### Two Ways to Update Your Website

#### Method 1: Visual Interface (No Command Line) - **Recommended for Beginners**

**Using GitHub Web Interface:**

1. **Create New Blog Post**
   - Go to [GitHub.com](https://github.com) → Your Repository
   - Navigate to `_posts` folder
   - Click "Add file" → "Create new file"
   - Name it: `2025-09-06-your-title.md`
   - Copy content from `template-post.md`
   - Edit title, date, category, and content
   - Scroll down → Add commit message
   - Click "Commit new file"
   - **Your post will appear on the website in 2-3 minutes!**

2. **Edit Existing Pages**
   - Navigate to any `.md` file (like `index.md`, `research.md`)
   - Click the pencil icon (✏️) to edit
   - Make your changes
   - Scroll down → Add commit message
   - Click "Commit changes"

3. **Upload Images/Files**
   - Navigate to `images/` folder
   - Click "Add file" → "Upload files"
   - Drag and drop your images
   - Commit changes
   - Reference in markdown: `![Description](/images/your-image.jpg)`

4. **Using VS Code (Online)**
   - Go to your repository → Press "." (period key)
   - This opens VS Code in your browser
   - Edit files directly, commit using the Source Control panel

**Using GitHub Desktop App:**
1. Download [GitHub Desktop](https://desktop.github.com/)
2. Clone your repository
3. Edit files locally with any text editor
4. Use GitHub Desktop to commit and push changes

#### Method 2: Command Line (Advanced Users)
```bash
# Clone repository
git clone https://github.com/yourusername/Lupen14461.github.io.git

# Create new post
cp _posts/template-post.md _posts/2025-09-06-new-post.md

# Edit and commit
git add .
git commit -m "Add new blog post"
git push origin main
```

---

## Writing Format Guide 写作格式指南

### Markdown 基础语法

#### 标题 Headers
```markdown
# 一级标题
## 二级标题
### 三级标题
```

#### 链接 Links
```markdown
# 内部链接（推荐使用相对路径）
[博客页面](/blogs/)
[关于我](/about/)

# 外部链接
[GitHub](https://github.com)

# 带标题的链接
[GitHub](https://github.com "访问GitHub")

# 参考式链接
[Google][1]
[1]: https://google.com
```

#### 图片 Images
```markdown
# 本地图片（推荐放在 images/ 文件夹）
![头像](/images/avatar.jpg)
![项目截图](/images/project-screenshot.png)

# 带描述的图片
<img src="/images/photo.jpg" alt="描述" class="floatpic">

# 居中图片
<center>
<img src="/images/centered-image.png">
</center>
```

#### 列表 Lists
```markdown
# 无序列表
- 项目一
- 项目二
  - 子项目

# 有序列表
1. 第一项
2. 第二项
3. 第三项
```

#### 强调 Emphasis
```markdown
**粗体文字**
*斜体文字*
***粗斜体***
~~删除线~~
```

#### 代码 Code
```markdown
# 行内代码
使用 `git commit` 命令提交代码

# 代码块
```bash
git add .
git commit -m "update blog"
git push origin main
``` 
```

#### 引用 Quotes
```markdown
> 这是一段引用文字
> 可以多行显示
```

#### 表格 Tables
```markdown
| 列1 | 列2 | 列3 |
|-----|-----|-----|
| 内容1 | 内容2 | 内容3 |
| 内容4 | 内容5 | 内容6 |
```

## 📱 Mobile-Friendly Updates

### Update from Phone/Tablet
1. **GitHub Mobile App**
   - Download GitHub app
   - Navigate to your repository
   - Tap any file → Edit (✏️)
   - Make changes and commit

2. **Mobile Browser**
   - Go to GitHub.com in mobile browser
   - Navigate to files and edit directly
   - Works exactly like desktop version

### 🔄 Automatic Website Updates

**How it works:**
- Any change you make and commit will automatically update your website
- GitHub Pages rebuilds your site in 2-3 minutes
- No additional steps needed!

**Check if your update worked:**
1. Visit your website: `https://yourusername.github.io`
2. If you don't see changes, wait 2-3 minutes and refresh
3. Clear browser cache if needed (Ctrl+F5 or Cmd+Shift+R)

---

## 🛠️ Website Maintenance Guide

### Regular Maintenance Tasks

#### Weekly Tasks (5 minutes)
- [ ] Add new blog posts
- [ ] Update current activities
- [ ] Check all links work

#### Monthly Tasks (15 minutes)
- [ ] Review and update old content
- [ ] Add new projects or achievements
- [ ] Backup important files

#### Quarterly Tasks (30 minutes)
- [ ] Update personal information
- [ ] Review website design
- [ ] Add new sections if needed

### Common Updates

#### Update Personal Information
1. Edit `index.md` for homepage
2. Edit `_config.yml` for site-wide settings
3. Update your photo in `images/` folder

#### Add New Research/Projects
1. Edit `research.md`
2. Add project details
3. Upload related images to `images/`

#### Add New Courses
1. Edit `courses.md` to add course link
2. Create new file in `courses/` folder
3. Use `courses/template-course.md` as starting point

### 🔧 Troubleshooting

#### Website Not Updating?
- Wait 5 minutes (GitHub Pages needs time)
- Check GitHub repository for any error messages
- Ensure your commits were successful

#### Links Broken?
- Use relative paths: `/images/photo.jpg` not `images/photo.jpg`
- Check file names match exactly (case-sensitive)

#### Images Not Showing?
- Ensure images are in `images/` folder
- Use correct path: `/images/filename.jpg`
- Check image file size (keep under 1MB)

---

## 📁 File Organization Guide

```
/
├── _config.yml          # Site configuration
├── index.md             # Homepage (About Me)
├── research.md          # Research page
├── courses.md           # Courses overview
├── blogs.md             # Blog listing page
├── hobbies.md           # Hobbies page
├── _posts/              # Auto-managed blog posts (Jekyll standard)
│   ├── template-post.md # Post template
│   └── YYYY-MM-DD-title.md  # Your blog posts
├── courses/             # Individual course pages
│   └── template-course.md   # Course template
├── images/              # All images for website
│   ├── your-photo.jpg   # Profile photos
│   └── project-screenshots/ # Project images
├── file/                # Documents and files
│   ├── CV.pdf          # Your CV
│   └── presentations/   # Presentation files
└── backup/              # Backup files (optional)
```

---

## 🎯 Writing Format Guide

### Markdown Basics

#### Headers
```markdown
# Main Title
## Section Title
### Subsection Title
```

#### Links
```markdown
# Internal links (use relative paths)
[Blog Page](/blogs/)
[About Me](/about/)

# External links
[GitHub](https://github.com)

# Links with titles
[GitHub](https://github.com "Visit GitHub")
```

#### Images
```markdown
# Local images (put in images/ folder)
![Profile Photo](/images/profile.jpg)
![Project Screenshot](/images/project.png)

# Images with custom styling
<img src="/images/photo.jpg" alt="Description" class="floatpic">

# Centered images
<center>
<img src="/images/centered-image.png">
</center>
```

#### Lists
```markdown
# Unordered lists
- Item one
- Item two
  - Sub-item

# Ordered lists
1. First item
2. Second item
3. Third item
```

#### Emphasis
```markdown
**Bold text**
*Italic text*
***Bold and italic***
~~Strikethrough~~
```

#### Code
```markdown
# Inline code
Use `git commit` command to save changes

# Code blocks
```bash
git add .
git commit -m "update blog"
git push origin main
``` 
```

#### Quotes
```markdown
> This is a quote
> Can span multiple lines
```

#### Tables
```markdown
| Column 1 | Column 2 | Column 3 |
|----------|----------|----------|
| Content 1| Content 2| Content 3|
| Content 4| Content 5| Content 6|
```

### Jekyll Special Syntax

#### Front Matter (File Header)
```yaml
---
layout: post
title: "Article Title"
date: 2025-09-06
category: diary  # diary/course/research/tech/life
tags: [tag1, tag2]
---
```

#### Include Files
```markdown
{% include disqus.html %}
{% include author-bio.html %}
```

#### Highlighted Code
```markdown
{% highlight python %}
def hello_world():
    print("Hello, World!")
{% endhighlight %}
```

---
│   ├── study-notes/     # 学习笔记
│   └── projects/        # 项目总结
├── hobbies.md           # 兴趣爱好页
├── images/              # 图片资源
├── file/                # 文件资源（PDF等）
├── backup/              # 备份文件
│   ├── publications-backup.md
│   ├── awards-backup.md
│   └── hobbies-backup.md
└── README.md            # 说明文档
```

### 课程页面使用方法

每门课程创建独立的markdown文件，包含：
- 基本信息（讲师、学分、时间）
- 课程描述和学习目标
- 课程大纲（按周组织）
- 作业与项目记录
- 学习笔记链接
- 参考资料
- 课程总结与反思

示例：
```markdown
# 复制课程模板
cp courses/template-course.md courses/machine-learning.md

# 编辑课程内容
# 在courses.md中添加链接
- [Machine Learning](/courses/machine-learning/)
```

### Blog System Usage Guide (Fully Automated)

The blog system is now fully automated! You only need to write MD files, and Jekyll will handle everything else automatically.

#### Super Simple Article Creation Process

1. **Create MD files in the `_posts` folder**
   ```bash
   # File naming: YYYY-MM-DD-title.md
   touch _posts/2025-09-06-my-diary.md
   ```

2. **Write Front Matter and content**
   ```yaml
   ---
   layout: post
   title: "My Article Title"
   date: 2025-09-06
   category: diary  # diary/course/research/tech/life/math/cs
   tags: [tag1, tag2]
   ---
   
   # Article Content
   Write your content directly in Markdown!
   ```

3. **Save - Done!** Jekyll automatically:
   - ✅ Displays on blog homepage
   - ✅ Organizes by category
   - ✅ Generates links and excerpts

#### File Structure

```
_posts/                        # Put all articles here
├── template-post.md          # Template
├── 2025-09-06-diary.md       # Your articles
└── 2025-09-07-course.md      # More articles
```

#### Category Selection

---

## 🚀 Quick Start Examples

### Example 1: Create Your First Blog Post (Web Interface)

1. **Go to GitHub.com** → Navigate to your repository
2. **Click on `_posts` folder**
3. **Click "Add file" → "Create new file"**
4. **Name your file**: `2025-09-06-my-first-post.md`
5. **Copy this template**:
   ```markdown
   ---
   layout: post
   title: "My First Blog Post"
   date: 2025-09-06
   category: diary
   tags: [first-post, personal]
   ---

   # My First Blog Post

   Today I created my personal website! Here's what I learned:

   ## What I Accomplished
   - Set up Jekyll blog system
   - Learned Markdown syntax
   - Published my first post

   ## Next Steps
   - [ ] Add more content
   - [ ] Customize the design
   - [ ] Share with friends

   This is just the beginning of my journey!
   ```
6. **Scroll down** → Add commit message: "Add my first blog post"
7. **Click "Commit new file"**
8. **Wait 2-3 minutes** → Check your website!

### Example 2: Update Your About Me Page

1. **Navigate to `index.md`** in your repository
2. **Click the pencil icon (✏️)** to edit
3. **Replace the placeholder content**:
   ```markdown
   ---
   layout: page
   ---

   # About Me

   <img src="/images/my-photo.jpg" class="floatpic" width="360" height="480">

   Here is **Sicheng Tian**.

   I am currently a [Your Role] at [Your Institution]. 
   My interests include [Your Interests].

   ## Research Interests
   - [Interest 1]
   - [Interest 2]
   - [Interest 3]

   ## Currently Studying
   - [Course 1]
   - [Course 2]
   - [Project 1]

   ## News and Updates
   - **Sep 2025:** Started building my personal website
   - **[Date]:** [Your update]
   ```
4. **Commit changes** with message: "Update personal information"

### Example 3: Add Your Photo

1. **Navigate to `images/` folder**
2. **Click "Add file" → "Upload files"**
3. **Drag your photo** (name it `my-photo.jpg`)
4. **Commit** with message: "Add profile photo"
5. **Edit `index.md`** to update the image path

### 📱 Pro Tips for Mobile Users

**Using GitHub Mobile App:**
- Download from App Store/Google Play
- Edit files directly on your phone
- Perfect for quick blog updates

**Using Mobile Browser:**
- Bookmark your repository
- Edit files anywhere, anytime
- Auto-saves drafts while typing

---

## Update and News

- **Sep 2025:** Started customizing this personal website template
- **Previous updates:** This is forked from a well-maintained Jekyll template

## Star History

**If you like this template, please STAR the original repository! 🥰**
[![Star History Chart](https://api.star-history.com/svg?repos=GuangLun2000/GuangLun2000.github.io&type=Date)](https://www.star-history.com/#GuangLun2000/GuangLun2000.github.io&Date)

## Statement

© 2025 Sicheng Tian. Published with [GitHub Pages](https://pages.github.com/), powered by [Jekyll](https://jekyllrb.com/), based on the [Minimal Mistakes](https://mademistakes.com/) theme and [Jason Ansel's site](https://github.com/jansel/jansel.github.io). Original template from [GuangLun2000's repository](https://github.com/GuangLun2000/GuangLun2000.github.io).
