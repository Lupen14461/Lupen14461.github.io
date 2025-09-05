#!/bin/bash

# 创建新日记的脚本
# 使用方法: ./scripts/new-diary.sh "今日学习总结"

if [ $# -eq 0 ]; then
    echo "请提供日记标题"
    echo "使用方法: ./scripts/new-diary.sh \"今日学习总结\""
    exit 1
fi

# 获取参数
TITLE="$1"
TODAY=$(date +%Y-%m-%d)
TIME=$(date +"%H:%M")
FILENAME="$TODAY-$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-zA-Z0-9\u4e00-\u9fa5]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g').md"
FILEPATH="blogs/diary/$FILENAME"

# 创建文件
cat > "$FILEPATH" << EOF
---
layout: post
title: "$TITLE"
date: $TODAY
permalink: /blogs/diary/$TODAY-$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-zA-Z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g')/
category: diary
tags: [日记, 学习]
created: $TODAY $TIME
updated: $TODAY $TIME
version: 1.0
---

# $TITLE

<div style="background: #f8f9fa; padding: 15px; border-radius: 8px; margin-bottom: 20px;">
<strong>📝 文章信息</strong><br>
📅 创建时间: {{ page.created }}<br>
🔄 最后更新: {{ page.updated }}<br>
📋 分类: {{ page.category }}<br>
🏷️ 标签: {% for tag in page.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}<br>
📊 版本: {{ page.version }}
</div>

## 今日概况

<!-- 写下今天的整体情况 -->

---

## 学习内容

### 课程学习
<!-- 记录今天学习的课程内容 -->

### 自主学习  
<!-- 记录自主学习的内容 -->

---

## 思考与感悟

<!-- 记录今天的思考和感悟 -->

---

## 明日计划

- [ ] 计划项目1
- [ ] 计划项目2
- [ ] 计划项目3

---

## 更新记录

- **v1.0** ($TODAY $TIME): 初始创建

---

*本文创建于 $TODAY $TIME*
EOF

echo "✅ 日记已创建: $FILEPATH"
echo "📝 现在可以编辑文件添加内容"
echo ""
echo "📋 记得在 blogs.md 中添加链接:"
echo "<div class=\"blog-post\" data-date=\"$TODAY\" data-category=\"diary\">"
echo "    <div class=\"post-meta\">📔 日记 | 📅 $TODAY | ✏️ 创建于 $TODAY $TIME</div>"
echo "    <h3 class=\"post-title\"><a href=\"/blogs/diary/$TODAY-$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-zA-Z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g')/\">$TITLE</a></h3>"
echo "    <div class=\"post-summary\">今天的学习总结和思考...</div>"
echo "    <div class=\"post-tags\">"
echo "        <span class=\"tag\">日记</span>"
echo "        <span class=\"tag\">学习</span>"
echo "    </div>"
echo "    <div class=\"update-history\">"
echo "        更新记录: 创建于 $TODAY | 最后修改于 $TODAY"
echo "    </div>"
echo "</div>"
