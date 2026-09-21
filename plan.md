## Tasks

1. Track unsaved document buffers in server state.
2. Improve cache invalidation so changed files reliably clear stale diagnostics/results.
3. Implement meaningful didOpen, didChange, didClose, didSave.
4. Make parsing, diagnostics, semantic tokens, hover/reference index use the latest editor buffer where available.
5. Evaluate latency, correctness, and user experience before/after.

## Plan

Work | Outcome
---|---
Study current LSP server, cache model, VFS behavior | Architecture writeup and baseline measurements
Implement didSave | Diagnostics update when user save file
Implement buffer and its functionality | Server can work with unsaved changes
Implement didOpen/Change/Close | Server can receive unsaved text and work around it
Make parse/reference/semantic/diagnostic paths consistently use buffer text | No stale navigation/highlighting for open files
Evaluation/demo | Before/after scenarios, latency numbers, screenshots/GIFs

## Showable demo scenarios:

- Open broken .rzk file, fix it, diagnostics clear.
- Edit a definition, save, dependent diagnostics update.
- Unsaved buffer changes affect hover/references/semantic tokens.
- Typechecking worker cancels/restarts cleanly during rapid edits.
- Compare old behavior: “only rzk.yaml save rechecks” vs new behavior.
