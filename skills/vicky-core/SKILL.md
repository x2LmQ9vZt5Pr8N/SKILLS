---
name: vicky-core
description: >
  Master personal development protocol for Vicky. Enforces strict Discuss-First
  alignment (pros/cons and logic explanation before mutating code), Zero-Mock
  production-grade implementation (no fake data, real DB/API connections, real
  state machines, physical USB/device verification), Serena semantic AST intelligence
  (symbol navigation, zero-drift refactoring, project memory), Session Context Loss
  Prevention (persistent checkpointing in README.md), and Obsidian Vault synchronization
  (c:\Users\vicky\Documents\Obsidian Vault). Use on all coding, architecture,
  refactoring, debugging, and system design tasks.
---

# Vicky-Core: Master Personal Development Protocol

This skill codifies the core engineering rules, quality standards, and operating workflow established across Vicky's projects (including Centralized Business Management System, Flutter RO Parts, and SparesROParts).

---

## 1. Pillar One: Strict Discuss-Before-Mutating (The Alignment Gate)

**Core Rule:** Never edit, create, or delete code files silently or prematurely. Always align on the plan and logic first.

### Workflow:
1. **Reconnaissance & Understanding:**
   - Read relevant files, database schemas, and API contracts completely before suggesting changes.
   - Use Serena semantic tools (`find_symbol`, `get_symbols_overview`, `find_referencing_symbols`) to trace caller hierarchies and data lifecycles end-to-end without token waste.
2. **Deep Technical Breakdown:**
   - Explain *what* was found, *why* an issue occurs, and the exact architectural logic proposed.
   - Present **Pros vs. Cons** when comparing approaches (e.g., AWS EC2 vs Serverless, Local Cache vs Remote DB, Google Maps API vs local coordinate caching).
3. **Explicit Confirmation Gate:**
   - Ask for confirmation before touching files.
   - Wait for explicit user approval (e.g., `"ok proceed"`, `"verify and proceed"`, `"yes"`, `"confirm"`).
   - If challenged or given external AI feedback: analyze objectively, never change core principles blindly, and state clear technical reasons for any adjustments.

### THE "FAST" TRIGGER OVERRIDE (Ultra-Fast Small Changes):
- **When Triggered:** Whenever Vicky writes `"FAST"`, `"fast"`, `"quick"`, or commands a small change (UI text/label, padding, color, 1-line bug fix, typo, config toggle):
- **Bypass the Gate:** Do NOT pause to discuss, do NOT write pros/cons, do NOT ask for confirmation.
- **Execute Instantly:** Apply the edit in one shot using `replace_file_content` and return only the clean diff in 1 sentence. Zero overthinking, zero fluff.

---

## 2. Pillar Two: Zero-Mock Production Standard

**Core Rule:** Absolute ban on mock data, hardcoded sample arrays, placeholder stubs, or simulated endpoints in production code paths.

### Requirements:
- **Real Backend & DB Wiring:**
  - Real PostgreSQL (with JSONB where applicable), Redis, DynamoDB, and AWS EC2 deployments.
  - Real authentication: Phone number + OTP verification flows.
  - Real push notifications: FCM (Firebase Cloud Messaging) tokens without repeated logout bugs.
- **State Machine Integrity:**
  - Prevent duplicate scans (barcode/QR) in memory before hitting DB.
  - Verify kit assembly locally first, then validate against database on batch inward sync.
  - Immutable custody & inventory transfer logs once submitted (transfers represent financial liability).
- **Role & Security Enforcement:**
  - **Super Admin:** Web only. Super admin must NEVER log in from mobile apps.
  - **Ground Staff/Technicians:** Mobile app only.
  - **Privacy:** Never expose admin phone numbers or credentials in client UI, logs, or user error messages.
- **Hardware & Device Testing:**
  - Build code that runs reliably on physical Android devices via USB debugging and real browser ports (`flutter run -d chrome`, `npm run dev`).

---

## 3. Pillar Three: Session Context Shield (Anti-Loss Checkpointing)

**Core Rule:** Prevent lost progress from system restarts, crashes, or power-offs by maintaining persistent context across both documentation and Serena memory.

### Checkpointing Protocol:
1. **Maintain Project `README.md` & Serena Memory:**
   - Keep a designated **"Session State & Architecture Ledger"** in the root `README.md`.
   - Store critical architectural decisions and state machine contracts using Serena memory (`write_memory`), ensuring cross-session recovery even after complete IDE reboots.
   - Record:
     - Approved architecture plans & state machine specifications.
     - Active database tables and API contracts.
     - Current completed features vs. pending milestones.
     - Critical edge cases and fraud/error mitigation rules.
2. **On Session Recovery:**
   - When the user asks to *"recover chat"*, *"resume chat"*, or restarts:
     - Read the root `README.md` and load Serena memory (`read_memory`, `list_memories`) immediately.
     - Re-ground on the exact project state in the first response without hallucination.

---

## 4. Pillar Four: Obsidian Vault Synchronization

**Vault Path:** `c:\Users\vicky\Documents\Obsidian Vault\<Project Name>`

### Sync Guidelines:
- **Milestone Trigger:** Prompt the user to sync to Obsidian on major milestone completions (e.g., after completing a multi-app architecture phase, kit batching engine, or backend clearinghouse).
- **Direct Command Trigger:** Execute a full Obsidian sync whenever the user requests:
  - `"save to obsidian"` / `"save project to obsidian"` / `"update obsidian"`.
- **Note Standards:**
  - Use clean Obsidian Markdown with YAML frontmatter.
  - Maintain a `00 - Home & MOC.md` (Map of Content).
  - Use structured sub-notes (e.g., `01 - Architecture Overview.md`, `02 - Database & Schemas.md`, `03 - API Specifications.md`).
  - Maintain an immutable commit & change log with formatted IDs (e.g., `co-A000201`).

---

## 5. Pillar Five: Cost Optimization & Senior Pragmatism

**Core Rule:** Build high-performance systems with minimal infrastructure overhead (Ponytail / YAGNI).

- **Cost-Effective Infrastructure:**
  - Prioritize AWS EC2 free tier (2GB), PostgreSQL with JSONB, Redis caching, and Cloudflare routing.
  - Aggressively optimize Google Maps API hits by caching distance matrices and using client-side heuristics before pinging paid APIs.
  - Avoid fetching thousands of records: implement year/month filters and lazy pagination on backend endpoints.
- **Clean Light UI (Apple-Style Glassy Theme):**
  - Avoid heavy, dark, or generic "AI-generated" aesthetics.
  - Use clean, light, glassy themes with high contrast, legible typography, compact cards (50% card sizing when requested), and pixel-perfect padding (fix layout overflows immediately).

---

## 6. Pillar Six: Serena Semantic AST Intelligence & Hybrid Execution

**Core Rule:** Optimize performance and speed by using the right tool for the right job.

### Hybrid Routing Matrix:
- **Trivial String / UI Edits (High Speed):**
  - For simple 1-line text changes, minor UI label tweaks, or config files (`.json`, `.yaml`, `.env`), use standard built-in tools (`replace_file_content`, `grep_search`). Do not incur LSP overhead for trivial string fixes.
- **Symbol Refactoring & Bug Fixing (High Precision):**
  - Use Serena's AST tools (`find_symbol`, `find_referencing_symbols`, `replace_symbol_body`) when modifying shared functions, handlers, models, or state machines.
  - Eliminates line-drift errors and ensures sibling callers are not broken.
- **Pre-Compilation Verification:**
  - Run Serena `get_diagnostics_for_file` before asking the user to run builds on physical devices or web preview.
- **Architectural Memory:**
  - Use `write_memory` to commit verified contracts (e.g., QR formats like `BAT` and `KIT`, Super Admin Web-only rule, custody clearinghouse formulas) directly into project memory.
