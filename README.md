# Repository safeguards

## Pre‑push verification

A **pre‑push hook** is provided to guarantee that any file we claim to be live on GitHub actually exists on the remote before the push completes.

1. The verification script lives at `scripts/pre_push_hook.sh`.
2. To enable the hook locally run:
   ```bash
   git config core.hooksPath scripts
   chmod +x scripts/pre_push_hook.sh
   ```
   This makes Git automatically use `scripts/pre_push_hook.sh` as the `pre‑push` hook.
3. The hook aborts the push if any added or modified file returns an HTTP 200 error when fetched from `https://raw.githubusercontent.com/`.

The CI workflow (`.github/workflows/kdp_style_check.yml`) also runs this check on every push for an extra safety net.
