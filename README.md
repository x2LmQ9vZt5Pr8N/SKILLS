# Vicky's Antigravity Supercharged Config, Skills & Extensions Repository

This repository contains the complete personal configuration, custom skills, active plugins, rules, IDE settings, and automated installers for **Google Antigravity IDE** and **VS Code**.

Cloning this repository into any Antigravity installation instantly replicates this exact high-performance, zero-mock, Flutter & Android-ready environment.

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

### 4. `extensions/` (Flutter, Android & IDE Setup)
Complete manifest and automated installers:
- **Flutter & Dart:** `dart-code.flutter`, `dart-code.dart-code`
- **Android Native & Java:** `vscjava.vscode-java-pack`, `redhat.java`, `vscjava.vscode-gradle`, `vscjava.vscode-java-debug`, `vscjava.vscode-maven`
- **AI Coding Assistants:** `anthropic.claude-code`, `openai.chatgpt`, `saoudrizwan.claude-dev`, `qwenlm.qwen-code-vscode-ide-companion`, `obsidianlabs.obsidian-code-by-obsidian-labs`
- **Languages & Utilities:** Python, Go, Clangd, Docker, Rainbow CSV, PowerShell.
- **IDE Settings:** Pre-configured `settings.json` with autoSave, Flutter UI guides, Dart rulers, and prompt optimizations.

### 5. `archived_plugins/` (Zero-Latency Archive)
- Heavy, niche plugins (`science`, `kicad`, `data-agent-kit-plugin`) are safely archived here so they do **not** bloat prompt token budgets or slow down LLM latency during normal development.

---

## 🚀 How to Setup on ANY New Antigravity Installation

Run these two commands in **PowerShell** on any new computer:

```powershell
# Step 1: Clone this repository directly as your Antigravity config
if (Test-Path "$HOME\.gemini\config") {
    Rename-Item "$HOME\.gemini\config" "config_backup_$((Get-Date).ToString('yyyyMMddHHmmss'))"
}
git clone https://x2LmQ9vZt5Pr8N@github.com/x2LmQ9vZt5Pr8N/SKILLS.git "$HOME\.gemini\config"

# Step 2: 1-Click Complete Setup (Installs all Flutter & Android extensions, configures settings, verifies Android SDK & USB ADB)
powershell -ExecutionPolicy Bypass -File "$HOME\.gemini\config\setup_flutter_android.ps1"
```

### To Update / Sync Changes:
Whenever you update skills or settings on one machine, sync them effortlessly:

```powershell
powershell "$HOME\.gemini\config\sync.ps1" -Action pull   # Pull updates
powershell "$HOME\.gemini\config\sync.ps1" -Action push   # Push new changes
```

---

## 🔒 Security & Privacy Notice
This repository contains universal rules, skill manifests, and tool configurations. No environment secrets, API keys, or private customer/admin phone numbers are stored in this repository.
