# 🔌 Agent Plugins Hub

> **"Plugin = 特殊工具"** — 精选 AI Agent 插件，开箱即用地增加能力。

## 📖 什么是 Plugin？

Plugin（插件）是封装好的功能模块，通常提供输入→输出的标准化接口。

**本质：** 特定功能扩展 — 安装即可用。

**类比：** Agent 能操作 GitHub，但无法调用 Jira；装上 Jira 插件就能做到。

## 🏗️ 项目结构

```
agent-plugins/
├── README.md              # 本文件
├── deploy.sh              # 一键部署脚本
├── plugins/               # 精选 Plugin 信息
│   ├── coding/            # 编码工具插件
│   ├── productivity/      # 生产力插件
│   ├── communication/     # 通信插件
│   └── ai-services/       # AI 服务插件
└── references/            # 参考资料
    ├── plugin-architecture.md
    └── plugin-vs-skill-vs-mcp.md
```

## 🚀 快速部署

### 方式一：一键脚本（推荐）

```bash
git clone https://github.com/kongjie0325-art/agent-plugins.git
cd agent-plugins
bash deploy.sh
```

### 方式二：手动安装

```bash
# 根据你的 Agent 类型安装对应插件

# Claude Code — 通过 MCP 或 Subagent 方式使用
# OpenClaw — 通过 npx 安装
npx skills add anthropics/skills --yes

# Cursor — 通过 Extensions 安装
# 详见各插件仓库 README
```

## 📦 精选 Plugin 清单

### 💻 编码工具

| Plugin | 适用平台 | 说明 | 安装 |
|--------|---------|------|------|
| **Claude Code** | CLI | AI 编码代理 | `npm install -g @anthropic-ai/claude-code` |
| **OpenAI Codex** | CLI | OpenAI 编码代理 | `npm install -g @openai/codex` |
| **Cline** | VS Code | AI 编码助手 | VS Code 扩展商店搜索 "Cline" |
| **GitHub Copilot** | 多 IDE | AI 补全+聊天 | 各 IDE 扩展商店 |
| **Cursor** | IDE | AI-first IDE | 下载安装 cursor.com |
| **Windsurf** | IDE | Codeium AI IDE | 下载安装 codeium.com |
| **Roo Code** | VS Code | AI 编码+自主 | VS Code 扩展商店 |

### 📋 生产力

| Plugin | 适用平台 | 说明 | 安装 |
|--------|---------|------|------|
| **Linear** | 多平台 | 项目管理 | `npx -y @anthropic/linear-mcp` |
| **Notion** | 多平台 | 笔记/数据库 | `npx -y @anthropic/notion-mcp` |
| **Slack** | 多平台 | 团队通信 | Slack App Directory |
| **Jira** | 多平台 | 项目管理 | Atlassian Marketplace |

### 💬 通信

| Plugin | 适用平台 | 说明 | 安装 |
|--------|---------|------|------|
| **Telegram** | 多平台 | 消息推送 | BotFather 创建 Bot |
| **Discord** | 多平台 | 社区/通知 | Discord Developer Portal |
| **Signal** | CLI | 安全信号 | signal-cli |

### 🤖 AI 服务

| Plugin | 适用平台 | 说明 | 安装 |
|--------|---------|------|------|
| **Suno** | API | 音乐生成 | Suno API |
| **Perplexity** | API | AI 搜索 | Perplexity API |
| **Stability AI** | API | 图像生成 | DreamStudio API |
| **Hugging Face** | API | 模型/数据集 | `pip install huggingface_hub` |

## 🔌 Skills vs MCP vs Plugin 深度对比

### 本质区别

| 维度 | Skills | MCP | Plugin |
|------|--------|-----|--------|
| **本质** | 知识+流程模板 | 工具调用标准 | 功能扩展 |
| **作用** | 告诉 Agent 怎么做 | 让 Agent 能做 | 增加某个能力 |
| **形态** | Markdown 文件 | JSON-RPC 服务 | 封装好的应用 |
| **运行方式** | Agent 加载后推理 | 独立进程，按需调用 | 安装即用 |
| **通用性** | 极高（纯文本） | 极高（开放协议） | 低（平台绑定） |

### 能力对比

| 能力 | Skills | MCP | Plugin |
|------|--------|-----|--------|
| 提升推理质量 | ★★★★★ | ★★★ | ★★ |
| 执行操作 | ☆ | ★★★★★ | ★★★ |
| 跨平台通用 | ★★★★★ | ★★★★★ | ★ |
| 部署难度 | ★ | ★★★★ | ★ |
| 扩展性 | ★★★★★ | ★★★★★ | ★★ |
| 成本 | 极低 | 中 | 中 |

### 组合效果

```
仅模型                    ≈ 1x
模型 + Plugin             ≈ 2x
模型 + MCP                ≈ 5x
模型 + Skills             ≈ 8x
模型 + Skills + MCP + Memory ≈ 20x+
```

## 🎯 推荐配置

### 开发者场景
```
Claude Code / Cursor
  + DevOps Skills + GitHub Skills
  + GitHub MCP + Filesystem MCP + Docker MCP
  + Linear Plugin / Notion Plugin
```

### 运维场景
```
Hermes Agent / Claude
  + Network Skills + DevOps Skills
  + SSH MCP + Docker MCP + Filesystem MCP
  + Telegram Plugin (通知)
```

### 内容创作场景
```
Claude / GPT
  + Creative Skills + Research Skills
  + Browser MCP + Fetch MCP
  + Suno Plugin + Notion Plugin
```

## 🔗 相关项目

- **[agent-skills](https://github.com/kongjie0325-art/agent-skills)** — Skills 精选 + 部署
- **[agent-mcp](https://github.com/kongjie0325-art/agent-mcp)** — MCP Server 精选 + 部署

## 📄 License

MIT
