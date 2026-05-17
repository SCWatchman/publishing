# Publishing

Multi-project publishing repository. Each project may produce one or more publication formats (Amazon KDP, SSRN academic papers) with independent style guides per output type.

## Projects

| Project | Description | KDP | SSRN |
|---------|-------------|-----|------|
| `nyt-cyber-expose/` | Minutes to Zero — IRS infrastructure breach and contractor blindness | Active | Planned |
| `mdi/` | Material Dignity Infrastructure — The Refuge Protocol | Planned | Active |

## Shared Resources

| Path | Purpose |
|------|--------|
| `_styles/` | Manual of Style files per output type (KDP non-fiction, SSRN academic, etc.) |
| `_templates/` | Starter skeletons for new projects or output tracks |
| `profile.md` | Author session preferences and operational rules |

## Adding a New Project

1. Create a new folder at the repo root (e.g., `new-project/`).
2. Copy the appropriate template from `_templates/` into `new-project/kdp/` or `new-project/ssrn/`.
3. Add a `README.md` to the project folder describing the work.
4. Reference the correct style guide from `_styles/`.
