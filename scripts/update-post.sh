#!/bin/bash

# 更新文章修改时间的脚本
# 使用方法: ./scripts/update-post.sh "filepath" "更新说明"

if [ $# -lt 1 ]; then
    echo "请提供文件路径"
    echo "使用方法: ./scripts/update-post.sh \"blogs/diary/2025-09-06-title.md\" \"添加了新的思考\""
    exit 1
fi

FILEPATH="$1"
UPDATE_NOTE="${2:-常规更新}"
TODAY=$(date +%Y-%m-%d)
TIME=$(date +"%H:%M")
TIMESTAMP="$TODAY $TIME"

if [ ! -f "$FILEPATH" ]; then
    echo "❌ 文件不存在: $FILEPATH"
    exit 1
fi

# 读取当前版本号
CURRENT_VERSION=$(grep "^version:" "$FILEPATH" | sed 's/version: //' | tr -d ' ')
if [ -z "$CURRENT_VERSION" ]; then
    NEW_VERSION="1.1"
else
    # 增加版本号
    MAJOR=$(echo $CURRENT_VERSION | cut -d. -f1)
    MINOR=$(echo $CURRENT_VERSION | cut -d. -f2)
    MINOR=$((MINOR + 1))
    NEW_VERSION="$MAJOR.$MINOR"
fi

# 更新文件
# 更新 updated 字段
sed -i.bak "s/^updated:.*/updated: $TIMESTAMP/" "$FILEPATH"

# 更新版本号
sed -i.bak "s/^version:.*/version: $NEW_VERSION/" "$FILEPATH"

# 在更新记录中添加新条目
sed -i.bak "/^## 更新记录/a\\
- **v$NEW_VERSION** ($TIMESTAMP): $UPDATE_NOTE" "$FILEPATH"

# 删除备份文件
rm "$FILEPATH.bak"

echo "✅ 文章已更新: $FILEPATH"
echo "🔄 新版本: v$NEW_VERSION"
echo "📝 更新说明: $UPDATE_NOTE"
echo "⏰ 更新时间: $TIMESTAMP"
echo ""
echo "📋 记得在 blogs.md 中更新对应文章的时间信息"
