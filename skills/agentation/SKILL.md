---
name: agentation
description: Visual feedback and element annotation tool for React / Next.js web applications. Use when interpreting UI feedback, annotations, selectors, and computed styles captured via Agentation toolbar.
---

# Agentation Skill

Agentation bridges the gap between visual UI inspection and AI code generation by providing structured DOM, React fiber, and file context.

## Workflow

1. **User Annotation**:
   - In development mode (`npm run dev`), the floating Agentation toolbar appears in the browser.
   - The user clicks on any element to annotate it with notes, expected behavior, or styling adjustments.
   - When the user copies the feedback or exports it, it generates a markdown block containing:
     - Target text and label
     - CSS selector
     - React component hierarchy
     - File path / source reference
     - Current computed styles & dimensions

2. **Agent Handling of Agentation Feedback**:
   - Locate the exact file and component referenced in the annotation.
   - Apply the requested visual, layout, or behavioral fixes directly at the root cause.
   - Respect existing theme tokens, CSS variables, and Tailwind / Vanilla CSS classes.
   - Verify the adjustment via dev server (`http://localhost:9002`) or browser subagent.
