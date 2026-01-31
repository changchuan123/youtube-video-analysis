# YouTube视频解析项目

*创建时间: 2026-01-31*

## 📁 项目结构

```
youtube-video-analysis/
├── README.md                    # 项目说明
├── YOUTUBE_VIDEO_WORKFLOW.md    # 工作流文档
├── docs/
│   ├── markdown/
│   │   └── YouTube视频解析模板.md    # Obsidian Markdown模板
│   └── canvas/
│       └── video-analysis.canvas    # Canvas思维导图
├── scripts/
│   └── sync-to-github.sh        # Git同步脚本
└── .git/
```

## 🚀 快速开始

### 1. 解析新视频

1. 打开视频链接
2. 获取字幕/脚本
3. 复制 `docs/markdown/YouTube视频解析模板.md`
4. 根据模板填写内容

### 2. 更新Canvas

1. 使用Obsidian打开 `video-analysis.canvas`
2. 编辑节点和连接
3. 保存

### 3. 同步到GitHub

```bash
cd youtube-video-analysis
./scripts/sync-to-github.sh
```

## 📝 使用说明

### NotebookLM集成

```bash
# 认证设置
cd ~/.openclaw/skills/notebooklm-skill
./.venv/bin/python scripts/run.py auth_manager.py setup

# 添加笔记本
./.venv/bin/python scripts/run.py notebook_manager.py add \
  --url "https://notebooklm.google.com/notebook/..." \
  --name "视频解析" \
  --description "视频内容分析" \
  --topics "YouTube,视频解析"

# 查询分析
./.venv/bin/python scripts/run.py ask_question.py \
  --question "总结视频核心观点" \
  --notebook-url "https://notebooklm.google.com/notebook/..."
```

### Obsidian集成

使用obsidian-skills中的：
- `obsidian-markdown` - 编辑Markdown
- `json-canvas` - 编辑Canvas

## 🎯 目标

- 系统化整理YouTube视频内容
- 快速提取关键洞察
- 可视化知识结构
- 同步到GitHub备份

## 📚 相关资源

- **YouTube视频**: https://www.youtube.com/watch?v=5FokzkHTpc0
- **NotebookLM Skill**: `~/.openclaw/skills/notebooklm-skill/`
- **Obsidian Skills**: `~/.openclaw/skills/obsidian-skills/`

---

*由圆圆生成 🐾*
