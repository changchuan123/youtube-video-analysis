#!/bin/bash
# sync-to-github.sh - YouTube视频解析项目同步脚本

set -e

echo "🚀 开始同步YouTube视频解析项目到GitHub..."

# 检查是否有远程仓库
if ! git remote get-url origin >/dev/null 2>&1; then
    echo "⚠️ 未配置远程仓库，请先设置:"
    echo "   git remote add origin <your-github-repo-url>"
    echo ""
    echo "示例:"
    echo "   git remote add origin https://github.com/你的用户名/youtube-video-analysis.git"
    exit 1
fi

# 添加所有更改
echo "📦 添加更改..."
git add .

# 检查是否有更改
if git diff --cached --quiet; then
    echo "✅ 没有新的更改需要提交"
else
    # 获取用户输入的提交信息
    if [ -z "$1" ]; then
        COMMIT_MSG="Update: $(date +'%Y-%m-%d %H:%M') - YouTube视频解析项目"
    else
        COMMIT_MSG="$1"
    fi
    
    echo "📝 提交更改: $COMMIT_MSG"
    git commit -m "$COMMIT_MSG"
fi

# 推送到GitHub
echo "🚀 推送到GitHub..."
git push origin master || git push origin main

echo ""
echo "✅ 同步完成！"
echo "📁 项目已推送到GitHub"
