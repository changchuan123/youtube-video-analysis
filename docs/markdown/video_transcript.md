---
title: YouTube视频解析 - 5FokzkHTpc0
created: 2026-02-01
source: https://www.youtube.com/watch?v=5FokzkHTpc0
tags: [YouTube, 视频解析, 待手动填写]
---

# 视频信息

> **视频ID**: 5FokzkHTpc0
> **链接**: https://www.youtube.com/watch?v=5FokzkHTpc0
> **说明**: 字幕获取失败，请手动添加内容

## 📝 自动获取状态

- **字幕获取**: ❌ 失败（API限制）
- **NotebookLM认证**: ⏳ 待手动设置
- **内容解析**: ⏳ 等待中

## ⚠️ 手动操作步骤

### 步骤1: 获取视频内容

1. 打开 https://www.youtube.com/watch?v=5FokzkHTpc0
2. 点击"..."菜单 → "Show transcript" 获取字幕
3. 复制字幕内容

### 步骤2: NotebookLM认证

```bash
cd ~/.openclaw/skills/notebooklm-skill
./.venv/bin/python scripts/run.py auth_manager.py setup
```

会打开浏览器窗口，需要手动登录Google。

### 步骤3: 导入内容

1. 上传字幕/内容到NotebookLM
2. 使用查询获取分析：
```bash
./.venv/bin/python scripts/run.py ask_question.py \
  --question "总结视频核心观点和关键洞察" \
  --notebook-url "你的notebook URL"
```

### 步骤4: 更新本文档

将解析结果填入下方：

## 📊 待填写区域

### 视频基本信息
- **标题**: [请填写]
- **作者**: [请填写]
- **时长**: [请填写]
- **发布日期**: [请填写]

### 核心要点
1. [要点1]
2. [要点2]
3. [要点3]

### 金句引用
> "[引用1]"
> 
> "[引用2]"

### 实践行动
1. [行动1]
2. [行动2]
3. [行动3]

## 📎 相关链接

- **YouTube视频**: https://www.youtube.com/watch?v=5FokzkHTpc0
- **项目仓库**: https://github.com/changchuan123/youtube-video-analysis
- **工作流文档**: YOUTUBE_VIDEO_WORKFLOW.md
- **Canvas思维导图**: docs/canvas/video-analysis.canvas

## 🔄 GitHub同步

```bash
cd ~/.openclaw/workspace/youtube-video-analysis
./scripts/sync-to-github.sh "更新视频解析内容"
```

---

*自动创建于: 2026-02-01*
*需要手动完成: 获取字幕、NotebookLM认证、内容解析*
