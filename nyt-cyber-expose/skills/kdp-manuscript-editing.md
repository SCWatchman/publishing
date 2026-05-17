---
name: kdp-manuscript-editing
description: Workflow for editing KDP manuscript markdown files in the publishing repository, adhering to user’s Hemingway‑style preferences and ensuring safe Git operations.
category: publishing
version: 1.0
trigger: "When editing chapter files in rithythul/publishing"
---

# Overview
This skill defines a repeatable process for updating chapters of the NYT Cyber Expose KDP manuscript located in `rithythul/publishing`. It enforces the user’s stylistic preferences (short declarative sentences, 8‑10 word average, no em‑dashes, no filler) and includes verification steps to ensure the remote repository reflects the changes.

# Steps
1. **Authenticate & configure Git**
   ```bash
   gh auth status   # Verify authentication as rithythul
   git config --global user.email "rithythul@example.com"
   git config --global user.name "Rithy Thul"
   ```
2. **Clone or fetch the repository**
   ```bash
   if [ ! -d publishing ]; then
       git clone https://github.com/rithythul/publishing publishing
   else
       git -C publishing fetch --all
   fi
   cd publishing
   git checkout main
   ```
3. **Edit the target markdown file**
   - Open the file (e.g., `nyt-cyber-expose/kdp/manuscript/chapter_drafts/chapter_01_zero_hour.md`).
   - Rewrite content following the **Hemingway‑style guide** (see `references/style_guide.md`).
   - Keep sentences short (≈ 8‑10 words) and avoid em‑dashes.
4. **Stage and commit**
   ```bash
   git add <file>
   git commit -m "Gold‑standard edit of chapter XX"
   ```
5. **Push and verify**
   ```bash
   git push origin main
   git ls-remote --heads origin main   # Verify remote HEAD matches local commit SHA
   ```
6. **Optional – Clean up**
   - Pull any new changes from remote before next edit.
   - Delete temporary branches if created.

# Pitfalls & Workarounds
- **Forgot Git identity** – `git commit` will abort. Set `user.email` and `user.name` before committing.
- **Em‑dash accidentally inserted** – Search with `git diff | grep "—"` and replace with a space or hyphen.
- **Sentence length exceeds target** – Use a word‑count script (`wc -w`) on each line; rewrite to stay within 8‑10 words.
- **Remote not updated** – After push, always run `git ls-remote` to confirm the SHA matches `git rev-parse HEAD`.
- **Accidentally printing file content** – Do not `cat` the file for the user; only push and let them review on GitHub.

# References
- `references/style_guide.md` – User‑specific style preferences extracted from `profile.md`.
- `references/git_workflow.md` – Standard Git steps for safe commits and pushes.

# Verification
- After push, the SHA returned by `git ls-remote` must equal the local HEAD SHA.
- Run a linter (if available) to ensure no em‑dashes remain.

---