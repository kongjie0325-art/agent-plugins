# Plugin Resources Index

> Auto-generated index of all Plugin resources collected from GitHub repositories.

## Directory Structure

```
agent-plugins/
├── README.md                          # Project overview
├── INDEX.md                           # This file
├── deploy.sh                          # Deployment script
├── catalogs/                          # Plugin catalogs & manifests
│   ├── hermes-plugin-catalog.md       # Hermes Plugin catalog (40+ categories)
│   └── platform-plugins/              # Platform-specific plugin manifests
│       ├── claude-plugin.json
│       ├── claude-plugin-marketplace.json
│       ├── codex-plugin.json
│       ├── cursor-plugin.json
│       └── mattpocock-skills-claude-plugin.json
├── references/                        # Analysis & comparison documents
│   ├── what-are-plugins.md            # Plugin deep-dive (agent-skills-hub)
│   ├── plugin-ecosystem.md            # Plugin ecosystem comparison
│   ├── plugin-architecture.md          # Plugin architecture overview
│   ├── capabilities-comparison-plugin.md # Plugin deep-dive (agent-capabilities-comparison)
│   ├── agent-skill-mcp-plugin-analysis.md # Plugin analysis from agent-skill-mcp-plugin
│   ├── knowledge-hub-agent-framework.md   # Agent framework knowledge
│   ├── knowledge-hub-agent-platform.md    # Agent platform knowledge
│   ├── knowledge-hub-coding-agent.md      # Coding agent knowledge
│   └── knowledge-hub-mcp.md               # MCP knowledge
├── plugins/                           # Existing plugin categories
│   ├── coding/README.md
│   ├── productivity/README.md
│   ├── communication/README.md
│   └── ai-services/README.md
└── projects/                          # Full plugin projects
    └── codexplusplus/                 # Codex++ plugin (Rust+Tauri desktop app)
        ├── README.md
        ├── README_EN.md
        ├── CHANGELOG.md
        ├── CONTRIBUTING.md
        ├── Cargo.toml
        ├── Cargo.lock
        └── docs/release/
```

## Source Repositories

| # | Repository | Source Path | Target Location | Content |
|---|-----------|-------------|-----------------|---------|
| 1 | **plugin-catalog** | `README.md` | `catalogs/hermes-plugin-catalog.md` | 40+ Plugin categories (platform adapters, memory, image gen, video gen, web search, browser, entertainment, sysops, meetings, auth, observability, examples) |
| 2 | **ai-skills-hub** | `06-plugins/mattpocock-skills-claude-plugin/plugin.json` | `catalogs/platform-plugins/mattpocock-skills-claude-plugin.json` | Claude plugin manifest |
| 3 | **ai-skills-hub** | `06-plugins/plugins/cursor-plugin/plugin.json` | `catalogs/platform-plugins/cursor-plugin.json` | Cursor plugin manifest |
| 4 | **ai-skills-hub** | `06-plugins/plugins/claude-plugin/plugin.json` + `marketplace.json` | `catalogs/platform-plugins/claude-plugin.json` + `marketplace.json` | Claude plugin + marketplace data |
| 5 | **ai-skills-hub** | `06-plugins/plugins/codex-plugin/plugin.json` | `catalogs/platform-plugins/codex-plugin.json` | Codex plugin manifest |
| 6 | **ai-skills-hub** | `06-plugins/CodexPlusPlus/` | `projects/codexplusplus/` | Full Codex++ project (docs + config only) |
| 7 | **agent-skills-hub** | `docs/03-what-are-plugins.md` | `references/what-are-plugins.md` | Plugin deep-dive analysis |
| 8 | **agent-skills-hub** | `comparisons/plugin-ecosystem.md` | `references/plugin-ecosystem.md` | Plugin ecosystem comparison |
| 9 | **agent-skill-mcp-plugin** | `README.md` | `references/agent-skill-mcp-plugin-analysis.md` | Plugin analysis chapter |
| 10 | **agent-capabilities-comparison** | `docs/03-plugin-deep-dive.md` | `references/capabilities-comparison-plugin.md` | Plugin deep-dive analysis |
| 11 | **agent-knowledge-hub** | `kb/capability/agent-framework.md` | `references/knowledge-hub-agent-framework.md` | Agent framework knowledge |
| 12 | **agent-knowledge-hub** | `kb/capability/agent-platform.md` | `references/knowledge-hub-agent-platform.md` | Agent platform knowledge |
| 13 | **agent-knowledge-hub** | `kb/capability/coding-agent.md` | `references/knowledge-hub-coding-agent.md` | Coding agent knowledge |
| 14 | **agent-knowledge-hub** | `kb/capability/mcp.md` | `references/knowledge-hub-mcp.md` | MCP protocol knowledge |

## Statistics

- **Catalog entries**: 5 platform plugin manifests + 1 Hermes catalog (40+ categories)
- **Reference documents**: 10 analysis/comparison/knowledge documents
- **Full projects**: 1 (Codex++)
- **Total source repos**: 7
- **Total files collected**: 19

## Content Summary

### Catalogs
- **Hermes Plugin Catalog**: Comprehensive categorization of 40+ plugins across 12 domains (platform adapters, memory systems, image generation, video generation, web search, browser, entertainment/smart home, system ops, meetings, authentication, observability, examples)
- **Platform Plugin Manifests**: plugin.json and marketplace.json for Claude, Cursor, and Codex platforms

### References
- **Plugin Analysis**: What are plugins, how they work, architecture deep-dives
- **Ecosystem Comparisons**: Plugin ecosystem vs other approaches
- **Knowledge Base**: Agent frameworks, platforms, coding agents, MCP protocol

### Projects
- **CodexPlusPlus**: Rust+Tauri desktop application for Codex++ plugin (documentation + configuration + source code)
