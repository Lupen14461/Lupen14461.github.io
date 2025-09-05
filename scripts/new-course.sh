#!/bin/bash

# 创建新课程笔记的脚本
# 使用方法: ./scripts/new-course.sh "数据结构" "第一章-绪论"

if [ $# -lt 2 ]; then
    echo "请提供课程名称和章节标题"
    echo "使用方法: ./scripts/new-course.sh \"数据结构\" \"第一章-绪论\""
    exit 1
fi

# 获取参数
COURSE="$1"
CHAPTER="$2"
TODAY=$(date +%Y-%m-%d)
TIME=$(date +"%H:%M")
COURSE_DIR=$(echo "$COURSE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-zA-Z0-9\u4e00-\u9fa5]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g')
CHAPTER_FILE=$(echo "$CHAPTER" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-zA-Z0-9\u4e00-\u9fa5]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g')
FILENAME="$CHAPTER_FILE.md"

# 创建目录
mkdir -p "blogs/courses/$COURSE_DIR"
FILEPATH="blogs/courses/$COURSE_DIR/$FILENAME"

# 创建文件
cat > "$FILEPATH" << EOF
---
layout: post
title: "$COURSE - $CHAPTER"
date: $TODAY
permalink: /blogs/courses/$COURSE_DIR/$CHAPTER_FILE/
category: course
course: "$COURSE"
chapter: "$CHAPTER"
tags: [$COURSE, 学习笔记]
created: $TODAY $TIME
updated: $TODAY $TIME
version: 1.0
---

# $COURSE - $CHAPTER

<div style="background: #f8f9fa; padding: 15px; border-radius: 8px; margin-bottom: 20px;">
<strong>📚 课程信息</strong><br>
📖 课程: {{ page.course }}<br>
📑 章节: {{ page.chapter }}<br>
📅 学习日期: {{ page.date | date: "%Y-%m-%d" }}<br>
🔄 最后更新: {{ page.updated }}<br>
🏷️ 标签: {% for tag in page.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}<br>
📊 版本: {{ page.version }}
</div>

## 学习目标

<!-- 本章节的学习目标 -->
- 目标1
- 目标2
- 目标3

---

## 核心内容

### 关键概念
<!-- 记录关键概念和定义 -->

### 重要公式/定理
<!-- 记录重要的公式或定理 -->

### 示例分析
<!-- 分析重要的例题或案例 -->

---

## 课堂笔记

### 讲师要点
<!-- 记录讲师强调的重点 -->

### 课堂讨论
<!-- 记录课堂讨论的内容 -->

### 疑问点
<!-- 记录不理解的地方 -->

---

## 课后思考

### 理解程度
- 🟢 完全理解
- 🟡 基本理解  
- 🔴 需要复习

### 应用思考
<!-- 思考如何应用所学知识 -->

### 拓展阅读
<!-- 相关的拓展材料 -->

---

## 作业与练习

### 课后作业
<!-- 记录作业要求和完成情况 -->

### 练习题目
<!-- 记录重要的练习题 -->

---

## 复习要点

- 重点1
- 重点2  
- 重点3

---

## 更新记录

- **v1.0** ($TODAY $TIME): 初始学习笔记

---

## 相关链接

- [课程主页](/courses/$COURSE_DIR/)
<!-- - [上一章节](/blogs/courses/$COURSE_DIR/previous-chapter/) -->
<!-- - [下一章节](/blogs/courses/$COURSE_DIR/next-chapter/) -->

---

*学习笔记创建于 $TODAY $TIME*
EOF

echo "✅ 课程笔记已创建: $FILEPATH"
echo "📝 现在可以编辑文件添加内容"
echo ""
echo "📋 记得在 blogs.md 中添加链接:"
echo "<div class=\"blog-post\" data-date=\"$TODAY\" data-category=\"course\">"
echo "    <div class=\"post-meta\">📚 课程专栏 | 📅 $TODAY | ✏️ 创建于 $TODAY $TIME</div>"
echo "    <h3 class=\"post-title\"><a href=\"/blogs/courses/$COURSE_DIR/$CHAPTER_FILE/\">$COURSE - $CHAPTER</a></h3>"
echo "    <div class=\"post-summary\">$CHAPTER 的学习笔记和要点总结...</div>"
echo "    <div class=\"post-tags\">"
echo "        <span class=\"tag\">$COURSE</span>"
echo "        <span class=\"tag\">学习笔记</span>"
echo "    </div>"
echo "    <div class=\"update-history\">"
echo "        更新记录: 创建于 $TODAY | 最后修改于 $TODAY"
echo "    </div>"
echo "</div>"
