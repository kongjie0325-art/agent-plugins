# Plugin 架构详解

## Plugin 的本质

Plugin 是一种**封装好的功能模块**，为 Agent 提供特定领域的开箱即用能力。

## Plugin 类型

### 1. IDE 插件
- **Cursor Extensions**：AI-first IDE 的扩展
- **VS Code Extensions**：Cline, GitHub Copilot, Roo Code
- **JetBrains Plugins**：Copilot, Cline

### 2. 平台插件
- **Slack App**：消息/通知/命令
- **Telegram Bot**：消息推送/远程控制
- **Discord Bot**：社区管理/通知

### 3. API 插件
- **Suno API**：音乐生成
- **Perplexity API**：AI 搜索
- **Hugging Face API**：模型/数据集

## Plugin vs MCP vs Plugin 选择指南

| 场景 | 选什么 | 原因 |
|------|--------|------|
| 需要 Agent 学习新流程 | Skill | 纯 Prompt 最优 |
| 需要操作外部系统 | MCP | 标准协议，通用 |
| 已有现成服务要接入 | Plugin | 开箱即用 |
| 需要跨 Agent 复用 | MCP | 协议通用 |
| 平台特定功能 | Plugin | 深度集成 |

## 各平台 Plugin 生态

### Claude Code
- CLAUDE.md（项目级指令）
- Subagents（子代理）
- MCP Servers（工具连接）
- Worktrees（并行工作）

### Cursor
- Rules（项目级规则）
- Extensions（扩展市场）
- MCP Servers
- Background Agents

### OpenClaw
- SKILL.md
- plugins/ 目录
- MCP Servers
- Cron Jobs

### Hermes Agent
- skills/ 目录
- plugins/ 目录
- MCP Servers
- Cron Jobs + Delegation
