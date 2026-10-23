# Vicky's Antigravity Supercharged Config & Skills Repository

This repository contains the complete personal configuration, custom skills, active plugins, rules, and MCP definitions for Google Antigravity IDE.

Cloning this repository into any Antigravity installation instantly replicates this exact high-performance, zero-mock, fast-agent environment.

---

## ⚡ Key Highlights & Architecture

### 1. `AGENTS.md` (The Master Protocol)
Always loaded on every single turn:
- **High-Speed & Low Latency Directives:** Zero tool wasting, fastest tool routing.
- **The "FAST" Trigger:** Whenever you prefix a prompt with `"FAST"`, `"fast"`, or ask for a small change (UI text, padding, color, 1-line bug fix, typo), the agent executes instantly using native fast tools without overthinking or asking for confirmation.
- **Vicky-Core Protocol:**
  - **Pillar 1:** Strict Discuss-Before-Mutating (for complex logic, DB schemas, state machines).
  - **Pillar 2:** Zero-Mock Production Standards (real PostgreSQL/JSONB, Redis, DynamoDB, AWS EC2, real OTP/FCM, physical Android USB debugging ready).
  - **Pillar 3:** Session Context Loss Shield (`README.md` persistent ledger + Serena memory).
  - **Pillar 4:** Obsidian Vault Synchronization (`C:\Users\vicky\Documents\Obsidian Vault\<Project Name>`).
  - **Pillar 5:** Ponytail lazy senior dev mode (minimal diffs, YAGNI, standard library first).
  - **Pillar 6:** Apple-style glassy light UI standards & pixel overflow fixes.

### 2. `skills/` (Custom Skills)
- `vicky-core/`: Complete master workflow instructions and triggers.
- `ponytail/`, `ponytail-audit/`, `ponytail-review/`, `ponytail-debt/`: Code minimalism and anti-bloat filters.
- `archify/`: Standalone interactive HTML/SVG architecture diagrams.
- `gravitas/`: Implementation reliability and evidence-backed verification.
- `omniroute/`: AI gateway, model routing, and token optimization.
- `agentation/`: Web element inspection and computed styles debugging.
- `reverse-engineer-anything/` (REA): Binary, package, and runtime reverse engineering.

### 3. `plugins/` (Curated High-Performance Plugins)
- `serena`: Semantic AST code intelligence, symbol refactoring, and persistent memory.
- `android-cli-plugin`: Android CLI & physical device management.
- `flutter`: Flutter development, testing, and widget inspection.
- `chrome-devtools-plugin`: Chrome DevTools debugging and performance.
- `firebase`: Authentication, Firestore, Crashlytics, and FCM tokens.
- `google_maps_platform`: Optimized mapping, routing, and cost control.
- `modern-web-guidance-plugin`: Modern frontend and web development guidance.

### 4. `archived_plugins/` (Zero-Latency Archive)
- Heavy, niche plugins (`science`, `kicad`, `data-agent-kit-plugin`) are safely archived here so they do **not** bloat prompt token budgets or slow down LLM latency during normal development.

---

## 🚀 How to Setup on ANY New Antigravity Installation

Run this single command in **PowerShell** on any new computer:

```powershell
# 1. Backup any existing config (if present)
if (Test-Path "$HOME\.gemini\config") {
    Rename-Item "$HOME\.gemini\config" "config_backup_$((Get-Date).ToString('yyyyMMddHHmmss'))"
}

# 2. Clone this repository directly as your Antigravity config
git clone https://github.com/x2LmQ9vZt5Pr8N/SKILLS.git "$HOME\.gemini\config"
```

### To Update / Sync Changes:
Whenever you update skills or settings on one machine, pull them on any other machine:

```powershell
cd "$HOME\.gemini\config"
git pull
```

---

## 🔒 Security & Privacy Notice
This repository contains universal rules, skill manifests, and tool configurations. No environment secrets, API keys, or private customer/admin phone numbers are stored in this repository.
