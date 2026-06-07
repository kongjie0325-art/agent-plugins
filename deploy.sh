#!/bin/bash
# Agent Plugins Hub — 一键部署脚本
# 根据用户 Agent 类型安装推荐插件

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🔌 Agent Plugins Hub — Deploy"
echo "================================"
echo ""

# 检测平台
detect_platform() {
    if command -v claude &>/dev/null; then
        echo "claude-code"
    elif command -v cursor &>/dev/null; then
        echo "cursor"
    elif [ -d "/Applications/Cursor.app" ]; then
        echo "cursor"
    elif command -v code &>/dev/null; then
        echo "vscode"
    elif command -v gh &>/dev/null; then
        echo "github-cli"
    else
        echo "generic"
    fi
}

# 列出推荐插件
list_plugins() {
    echo "📦 Recommended Plugins by Category:"
    echo ""
    echo "  💻 Coding Tools:"
    echo "    • Claude Code     — AI coding agent (CLI)"
    echo "    • OpenAI Codex    — OpenAI coding agent (CLI)"
    echo "    • Cline           — VS Code AI coding"
    echo "    • GitHub Copilot  — Multi-IDE AI"
    echo "    • Cursor          — AI-first IDE"
    echo "    • Windsurf        — Codeium AI IDE"
    echo ""
    echo "  📋 Productivity:"
    echo "    • Linear          — Project management"
    echo "    • Notion          — Notes & databases"
    echo "    • Slack           — Team communication"
    echo "    • Jira            — Issue tracking"
    echo ""
    echo "  💬 Communication:"
    echo "    • Telegram        — Bot messaging"
    echo "    • Discord         — Community & notifications"
    echo ""
    echo "  🤖 AI Services:"
    echo "    • Suno            — Music generation"
    echo "    • Perplexity      — AI search"
    echo "    • Hugging Face   — Models & datasets"
    echo ""
}

# 安装 Claude Code
install_claude_code() {
    echo "💻 Installing Claude Code..."
    if ! command -v claude &>/dev/null; then
        npm install -g @anthropic-ai/claude-code 2>/dev/null || {
            echo "  ⚠️  Install failed. Try: npm install -g @anthropic-ai/claude-code"
            return 1
        }
        echo "  ✅ Claude Code installed"
    else
        echo "  ✅ Claude Code already installed: $(claude --version 2>/dev/null || echo 'unknown')"
    fi
}

# 安装 OpenAI Codex
install_codex() {
    echo "💻 Installing OpenAI Codex..."
    if ! command -v codex &>/dev/null; then
        npm install -g @openai/codex 2>/dev/null || {
            echo "  ⚠️  Install failed. Try: npm install -g @openai/codex"
            return 1
        }
        echo "  ✅ OpenAI Codex installed"
    else
        echo "  ✅ OpenAI Codex already installed"
    fi
}

# 安装 Cline (VS Code extension)
install_cline() {
    echo "💻 Installing Cline for VS Code..."
    if command -v code &>/dev/null; then
        code --install-extension saoudrizwan.claude-dev 2>/dev/null || {
            echo "  ⚠️  Install via VS Code extension store: search 'Cline'"
            return 1
        }
        echo "  ✅ Cline installed"
    else
        echo "  ⚠️  VS Code not found. Install from: https://marketplace.visualstudio.com/items?itemName=saoudrizwan.claude-dev"
    fi
}

# 通用安装指南
generic_guide() {
    echo ""
    echo "📋 Plugin Installation Guide:"
    echo ""
    echo "  Claude Code:"
    echo "    npm install -g @anthropic-ai/claude-code"
    echo "    claude mcp add filesystem npx -y @modelcontextprotocol/server-filesystem"
    echo ""
    echo "  OpenAI Codex:"
    echo "    npm install -g @openai/codex"
    echo ""
    echo "  Cursor (AI IDE):"
    echo "    Download from: https://www.cursor.com/"
    echo "    Then install extensions from marketplace"
    echo ""
    echo "  VS Code + Cline:"
    echo "    code --install-extension saoudrizwan.claude-dev"
    echo ""
    echo "  GitHub Copilot:"
    echo "    VS Code: Install 'GitHub Copilot' extension"
    echo "    JetBrains: Settings → Plugins → 'GitHub Copilot'"
    echo ""
    echo "  Telegram Bot (for Agent notifications):"
    echo "    1. Message @BotFather on Telegram"
    echo "    2. /newbot → get token"
    echo "    3. Set HERMES_TELEGRAM_TOKEN env var"
    echo ""
    echo "  Suno (AI music):"
    echo "    API key: https://suno.ai/api"
    echo ""
    echo "  Hugging Face:"
    echo "    pip install huggingface_hub"
    echo ""
}

# 主流程
PLATFORM=$(detect_platform)
echo "🔍 Detected platform: $PLATFORM"
echo ""

list_plugins
echo "================================"
echo ""

case "$PLATFORM" in
    claude-code)
        install_claude_code
        echo ""
        install_codex
        ;;
    vscode)
        install_cline
        ;;
    cursor)
        echo "✅ Cursor detected. Install extensions from Cursor marketplace."
        ;;
    *)
        echo "📋 Showing generic installation guide:"
        ;;
esac

echo ""
generic_guide

echo ""
echo "✅ Done!"
echo ""
echo "📊 三层能力模型:"
echo "  Skills (大脑经验) → https://github.com/kongjie0325-art/agent-skills"
echo "  MCP   (手和脚)   → https://github.com/kongjie0325-art/agent-mcp"
echo "  Plugin (特殊工具) → 已安装 ✅"
