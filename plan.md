## Tasks

- Make Typecheck VFS-aware
- Decide dependency graphing and respective cache invalidation
- Decide on debouncing policy

## Checkable propositions

- Latency with 


## Plan
1. Make typechecking aware of unsaved changes
2. Decide policy for on-edit project evaluation and implement it
3. Design and implement project-level module dependency graph and cache invalidation
4. Testing and Evaluation

## Showable demo scenarios:

- Open broken .rzk file, fix it, diagnostics clear.
- Edit a definition, save, dependent diagnostics update.
- Unsaved buffer changes affect hover/references/semantic tokens.
- Typechecking worker cancels/restarts cleanly during rapid edits.
- Compare old behavior: “only rzk.yaml save rechecks” vs new behavior.
