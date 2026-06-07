# Hermes Agent Plugin 分类目录

> 40+ 个 Plugin，按类型分门别类

---

## 📊 总览

| 类型 | 数量 | 说明 |
|------|------|------|
| 🌐 平台适配器 (Platform) | 9 | Discord / Telegram / Slack / Teams / LINE / 等 |
| 🧠 记忆系统 (Memory) | 8 | Mem0 / Supermemory / Honcho / Holographic / 等 |
| 🎨 图片生成 (Image Gen) | 5 | FAL / OpenAI / xAI / Krea |
| 🎬 视频生成 (Video Gen) | 2 | FAL / xAI |
| 🌍 网络搜索 (Web Search) | 8 | SearXNG / Tavily / xAI / Exa / Firecrawl / Brave / DDG / Parallel |
| 🌐 浏览器 (Browser) | 3 | Browser Use / Firecrawl / Browserbase |
| 🎵 娱乐/智能家居 | 2 | Spotify / Hue |
| 🔧 系统/运维 | 2 | Disk Cleanup / Security Guidance |
| 🤖 会议 | 2 | Google Meet / Teams Pipeline |
| 🔐 认证 | 1 | Dashboard OAuth |
| 📊 可观测 | 1 | Langfuse |
| 🧩 示例 | 1 | Example Dashboard |

---

## 🌐 平台适配器（9）

消息平台网关，让 Agent 在各个平台上接收和发送消息。

| Plugin | 平台 | 特性 |
|--------|------|------|
| `discord-platform` | Discord | 语音模式 / 斜杠命令 / 角色权限 / 频道绑定 |
| `telegram-platform` | Telegram | 内置于 Hermes（非 Plugin 形式） |
| `slack-platform` | Slack | 内置于 Hermes |
| `teams-platform` | Microsoft Teams | Bot Framework / Adaptive Card |
| `line-platform` | LINE | Webhook / HMAC 签名 / 模板按钮 |
| `google_chat-platform` | Google Chat | Cloud Pub/Sub / 文件附件 OAuth |
| `mattermost-platform` | Mattermost | WebSocket / 线程回复 / 文件上传 |
| `irc-platform` | IRC | 纯 Python stdlib / TLS / NickServ |
| `ntfy-platform` | ntfy | HTTP 流 / Markdown / 轻量推送 |
| `simplex-platform` | SimpleX Chat | WebSocket / 去中心化 / 最私密 |

### 平台对比

| 插件 | 认证方式 | 文件媒体 | 特殊能力 |
|------|---------|---------|---------|
| Discord | Bot Token | ✅ | 语音 / 斜杠命令 / 反应 |
| Teams | Azure AD Client | ✅ | Adaptive Card 审批 |
| LINE | Channel Token | ✅ | 慢响应模板按钮 |
| Google Chat | GCP Pub/Sub + SA | ✅ (OAuth) | 无需公网 URL |
| Mattermost | Bot Token | ✅ | 线程模式 |
| IRC | 无/SASL | ❌ | 纯 stdlib |
| ntfy | Token (可选) | ❌ | 最轻量 |
| SimpleX | 无 | ❌ | 去中心化 |

---

## 🧠 记忆系统（8）

跨会话记忆，让 Agent 记住你。

| Plugin | 说明 | 存储 | 特性 |
|--------|------|------|------|
| `holographic` | 本地 SQLite + FTS5 | 本地 | 信任评分 / HRR 组合检索 |
| `supermemory` | 语义长期记忆 | 云端 | 个人资料回忆 / 语义搜索 / 会话摄入 |
| `retaindb` | 云记忆 API | 云端 | 混合搜索 / 7 种记忆类型 |
| `byterover` | 持久知识树 | 本地 | 分层检索 (brv CLI) |
| `mem0` | 服务端 LLM 事实提取 | 云端 | 语义搜索 / 重排 / 自动去重 |
| `honcho` | AI 原生跨会话建模 | 云端 | 辩证 Q&A / 语义搜索 / 持久结论 |
| `openviking` | 上下文数据库 | 远程 | 自动提取 / 分层检索 / 文件系统式浏览 |
| `hindsight` | 知识图谱记忆 | 云端 | 实体解析 / 多策略检索 |

### 记忆对比

| 特性 | holographic | supermemory | mem0 | honcho | hindsight |
|------|------------|------------|------|--------|-----------|
| 本地存储 | ✅ SQLite | ❌ | ❌ | ❌ | ❌ |
| 语义搜索 | ✅ FTS5 | ✅ | ✅ | ✅ | ✅ |
| 知识图谱 | ❌ | ❌ | ❌ | ❌ | ✅ |
| LLM 提取 | ❌ | ✅ | ✅ | ✅ | ✅ |
| 信任评分 | ✅ | ❌ | ❌ | ❌ | ❌ |
| 安装复杂度 | 低 | 中 | 中 | 中 | 中 |

---

## 🌍 网络搜索（8）

多种搜索引擎后端，各有特色。

| Plugin | 说明 | API Key | 特色 |
|--------|------|---------|------|
| `searxng` | SearXNG 元搜索 | ❌ (需实例) | 自托管 / 隐私 |
| `tavily` | Tavily 搜索+提取+爬取 | ✅ | 爬取能力独有 |
| `xai` | xAI Grok 搜索 | ✅ (OAuth) | Agentic 搜索 |
| `exa` | Exa 搜索+提取 | ✅ | AI 优化 |
| `firecrawl` | Firecrawl 搜索+提取 | ✅ | 网页转 Markdown |
| `brave-free` | Brave 免费搜索 | ✅ (免费) | 2000 次/月 |
| `ddgs` | DuckDuckGo | ❌ | 无需 API Key |
| `parallel` | Parallel.ai | ✅ | 并行页抓取 |

---

## 🎨 图片生成（5）

| Plugin | 说明 | 模型 |
|--------|------|------|
| `image_gen/fal` | FAL.ai | flux-2 / nano-banana / gpt-image-1.5 / recraft-v3 |
| `image_gen/openai` | OpenAI DALL-E | gpt-image-2 |
| `image_gen/openai-codex` | Codex OAuth 图片 | gpt-image-2 (via ChatGPT) |
| `image_gen/xai` | xAI Grok Imagine | grok-imagine-image |
| `image_gen/krea` | Krea | Krea 2 Large / Medium |

---

## 🎬 视频生成（2）

| Plugin | 说明 | 模型 |
|--------|------|------|
| `video_gen/fal` | FAL.ai 视频 | Veo 3.1 / Kling / Pixverse |
| `video_gen/xai` | xAI 视频 | Grok Imagine Video (文本/图片/参考图/编辑/延长) |

---

## 🌐 浏览器（3）

| Plugin | 说明 | 特色 |
|--------|------|------|
| `browser/browser-use` | Browser Use 云浏览器 | Nous 订阅路由 |
| `browser/firecrawl` | Firecrawl 浏览器 | 网页抓取 + 浏览器 |
| `browser/browserbase` | Browserbase 云浏览器 | 隐身 / 代理 / 保活会话 |

---

## 🎵 娱乐/智能家居（2）

| Plugin | 说明 | 工具 |
|--------|------|------|
| `spotify` | Spotify 原生集成 | 7 工具：播放/设备/队列/搜索/播放列表/专辑/音乐库 |
| `openhue` | Philips Hue 灯光 | 灯控/场景/房间 |

---

## 🔧 系统/运维（2）

| Plugin | 说明 | Hook |
|--------|------|------|
| `disk-cleanup` | 自动清理临时文件 | post_tool_call / on_session_end |
| `security-guidance` | 写入文件时安全警告 | transform_tool_result / pre_tool_call |

---

## 🤖 会议（2）

| Plugin | 说明 | 能力 |
|--------|------|------|
| `google_meet` | Google Meet 会议 | 加入/转录/实时语音/远程节点 |
| `teams_pipeline` | Teams 会议摘要 | Graph 驱动的转录摘要流水线 |

---

## 🔐 认证（1）

| Plugin | 说明 |
|--------|------|
| `dashboard_auth/nous` | OAuth 2.0 + PKCE 认证 |

---

## 📊 可观测（1）

| Plugin | 说明 | Hook |
|--------|------|------|
| `observability/langfuse` | Langfuse 可观测性 | pre/post_api_request / pre/post_llm_call / pre/post_tool_call |

---

## 🔄 Plugin 架构

### Plugin 文件结构

```
plugin-name/
├── plugin.yaml          # 元数据（必选）
├── __init__.py          # Python 入口
├── README.md            # 文档
├── SKILL.md             # 可选：关联的 Skill
├── tools.py             # 工具实现
├── provider.py          # 后端提供者
└── cli.py               # CLI 入口（如有）
```

### plugin.yaml 规范

```yaml
name: my-plugin
version: 1.0.0
description: "插件描述"
author: "你的名字"
kind: backend           # backend / standalone / platform / model-provider
requires_env:
  - name: MY_API_KEY
    description: "API 密钥"
    prompt: "输入 API Key"
    url: "https://example.com/api"
    password: true
hooks:                    # 可选
  - on_session_end
  - post_tool_call
```

### Hook 类型

| Hook | 触发时机 | 用途 |
|------|---------|------|
| `on_session_end` | 会话结束 | 记忆保存 / 清理 |
| `post_tool_call` | 工具调用后 | 自动清理 / 统计 |
| `pre_tool_call` | 工具调用前 | 安全检查 |
| `transform_tool_result` | 工具结果返回后 | 安全警告注入 |
| `pre_api_request` | API 请求前 | 可观测性 |
| `post_api_request` | API 请求后 | 可观测性 |
| `pre_llm_call` | LLM 调用前 | 可观测性 |
| `post_llm_call` | LLM 调用后 | 可观测性 |
| `pre_compress` | 上下文压缩前 | 记忆提取 |

### Kind 类型

| Kind | 说明 | 示例 |
|------|------|------|
| `backend` | 后端服务提供者（搜索/生成/浏览器） | Web Search / Image Gen |
| `standalone` | 独立功能插件 | Google Meet / Teams Pipeline |
| `platform` | 消息平台适配器 | Discord / Telegram / Slack |
| `model-provider` | AI 模型提供者 | Anthropic / OpenAI / Gemini |
