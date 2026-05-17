#!/usr/bin/env bash
# Pre‑push verification script – ensures every added/modified file is reachable on GitHub (HTTP 200).
# Used by the repository’s pre‑push hook (see README for setup instructions).

while read local_ref local_sha remote_ref remote_sha; do
  # Collect added (A) or modified (M) files between the two commits.
  files=$(git diff --name-status "$local_sha..$remote_sha" | awk '/^[AM]/ {print $2}')
  for f in $files; do
    repo="${GITHUB_REPOSITORY:-rithythul/publishing}"
    branch="${remote_ref#refs/heads/}"
    url="https://raw.githubusercontent.com/${repo}/${branch}/${f}"
    code=$(curl -s -o /dev/null -w "%{http_code}" "$url")
    if [[ $code -ne 200 ]]; then
      echo "[pre‑push] ❌ $f is not reachable (HTTP $code)."
      echo "Push aborted – fix the file, commit again, then push."
      exit 1
    fi
  done
done

exit 0
