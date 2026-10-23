---
name: omniroute
description: >-
  Unified AI Gateway and intelligent proxy router (diegosouzapw/OmniRoute).
  Connects to 300+ AI providers (OpenAI, Anthropic, Gemini, DeepSeek, Ollama, etc.)
  with single-endpoint routing (http://localhost:20128/v1), automated quota fallback chains,
  token compression (RTK + Caveman saving 60-90%), MCP tools, and CLI management.
  Use when setting up or managing OmniRoute, routing LLM requests, checking server health,
  configuring API keys or routing combos, or integrating AI tools (Claude Code, Cursor, Codex, Antigravity).
---

# OmniRoute Skill

OmniRoute is an open-source, high-performance AI Gateway and unified proxy created by Diego Rodrigues de Sa e Souza (`diegosouzapw/OmniRoute`). It consolidates 300+ AI providers and models into a unified OpenAI-compatible endpoint with quota-aware auto-fallback, token compression (RTK + Caveman), MCP protocol support, and local CLI tools.

---

## 1. Installation & Server Setup

### Quick Install
```bash
# Global CLI installation via npm
npm install -g omniroute

# Verify installation
omniroute --version
```

### Starting the OmniRoute Server
```bash
# Start in foreground
omniroute serve

# Start as background daemon
omniroute serve --daemon

# Start with custom port and system tray disabled
omniroute serve --port 20128 --no-tray

# Open the Web Dashboard
omniroute dashboard
```
> Default web dashboard & API URL: `http://localhost:20128`  
> Default OpenAI inference endpoint: `http://localhost:20128/v1`

### Running via Docker
```bash
docker run -d \
  -p 20128:20128 \
  -v omniroute-data:/app/data \
  --name omniroute \
  ghcr.io/diegosouzapw/omniroute:latest
```

---

## 2. Core CLI Workflows

OmniRoute includes 21 dedicated CLI commands (`omniroute <subcommand>`):

### Health & Monitoring
```bash
# Check overall health status
omniroute health

# Inspect individual components (database, cache, upstream gateways)
omniroute health components

# Live real-time dashboard of circuit breakers and latency
omniroute health watch
```

### Provider Management
```bash
# List all 300+ available providers & active connections
omniroute providers list

# Add or update credentials for a provider
omniroute providers add <provider-name> --api-key <KEY>

# Test latency and connectivity to configured providers
omniroute providers test
omniroute providers test-all
```

### Models & Discovery
```bash
# Query active models across all configured providers
omniroute models list

# Search models by capability (e.g. vision, reasoning, fast)
omniroute models search "claude-3-5"
```

### Routing & Combo Rules
Combos allow you to group multiple models with smart distribution strategies (priority, weighted, round-robin, Auto-combo, cost-optimized):
```bash
# List existing routing combos
omniroute routing list

# Create a fallback combo
omniroute routing create --name "coding-combo" --strategy "priority" --models "anthropic/claude-3-5-sonnet,google/gemini-2.5-pro,deepseek/deepseek-chat"
```

### API Keys & Budgets
```bash
# Create an OmniRoute gateway API key
omniroute keys create --name "my-agent-key"

# List keys and spending quotas
omniroute keys list
```

### Interactive Chat / REPL
```bash
# Quick CLI test prompt through the gateway
omniroute chat --model "coding-combo" --prompt "Hello from OmniRoute"
```

---

## 3. Integrating with Antigravity & AI Tools

OmniRoute exposes standard OpenAI-compatible REST endpoints. You can redirect any AI assistant or coding agent to use OmniRoute as its backend:

### Endpoint Specifications
- **Base URL:** `http://localhost:20128/v1`
- **Chat Completions:** `POST http://localhost:20128/v1/chat/completions`
- **Models Endpoint:** `GET http://localhost:20128/v1/models`
- **Embeddings:** `POST http://localhost:20128/v1/embeddings`

### Environment Variables
Configure standard client tools:
```bash
export OPENAI_BASE_URL="http://localhost:20128/v1"
export OPENAI_API_KEY="your-omniroute-api-key" # or omit if local auth is disabled
```

### Claude Code / Cursor / Codex Configuration
In tool settings or configuration files, set:
- **Base URL:** `http://localhost:20128/v1`
- **Model Name:** Any provider-qualified model (e.g. `google/gemini-2.5-flash`, `deepseek/deepseek-coder`, `anthropic/claude-3-5-sonnet`) or combo alias.

---

## 4. Key Advanced Capabilities

### Quota-Aware Auto-Fallback & Circuit Breakers
If a model hits rate-limits (HTTP 429), quota exhaustion, or gateway timeouts (5xx), OmniRoute automatically retries using the next model in the fallback chain within milliseconds, preventing workflow interruption.

### Token Compression (RTK & Caveman)
Save 60%–90% of token overhead on prompts:
```bash
# Inspect compression settings
omniroute compression status

# Test prompt compression efficiency
omniroute compression test --file prompt.txt
```

### MCP (Model Context Protocol) Support
OmniRoute features a built-in MCP server with 110 tools across 33 scopes:
- **Transports:** SSE, stdio, Streamable HTTP
- **Discovery:** `omniroute mcp list`

---

## 5. Modular Reference Catalog

For detailed documentation, subcommands, and REST schemas for specific subsystems, consult the reference manifests in [references/](./references/):

### Core API References
- [Authentication & Sessions](./references/omni-auth/SKILL.md) (`omni-auth`)
- [Provider Management & Connections](./references/omni-providers/SKILL.md) (`omni-providers`)
- [Model Discovery & Capabilities](./references/omni-models/SKILL.md) (`omni-models`)
- [Routing Strategies & Combos](./references/omni-combos-routing/SKILL.md) (`omni-combos-routing`)
- [OpenAI Inference Endpoints](./references/omni-inference/SKILL.md) (`omni-inference`)
- [Token Compression & RTK](./references/omni-compression/SKILL.md) (`omni-compression`)
- [Resilience & Circuit Breakers](./references/omni-resilience/SKILL.md) (`omni-resilience`)
- [MCP Server Setup & Scopes](./references/omni-mcp/SKILL.md) (`omni-mcp`)
- [A2A Agent-to-Agent Protocol](./references/omni-agents-a2a/SKILL.md) (`omni-agents-a2a`)

### CLI Subcommand References
- [CLI: Serve & Daemon](./references/cli-serve/SKILL.md) (`cli-serve`)
- [CLI: Health & Monitoring](./references/cli-health/SKILL.md) (`cli-health`)
- [CLI: Providers](./references/cli-providers/SKILL.md) (`cli-providers`)
- [CLI: Models](./references/cli-models/SKILL.md) (`cli-models`)
- [CLI: Routing](./references/cli-routing/SKILL.md) (`cli-routing`)
- [CLI: Keys & Auth](./references/cli-keys/SKILL.md) (`cli-keys`)
- [CLI: Tunnels (ngrok / Cloudflare)](./references/cli-tunnel/SKILL.md) (`cli-tunnel`)
- [CLI: Skills Collector](./references/cli-skill-collector/SKILL.md) (`cli-skill-collector`)
- [Full Catalog Index](./references/README.md)
