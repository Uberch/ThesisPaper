## Author

Vyacheslav Molchanov, B23-SD-02

## Topic

Improving interactivity and consistency of the Rzk Language Server through on-edit reevaluation.

## Problem Statement

Rzk is an proof assistant for synthetic infinite-categories. Its existing language server already performs typechecking, diagnostics and highlighting and has buffer for unsaved IDE changes, however currently typechecker ignores that buffer and reads files straight from disk. Also currently typechecker caches its run, but lacks cache invalidation policy. Now every edit invalidates every following declaration, which causes edits in the beginning of big project to rerun typecheck on almost all code. This thesis provides a solution for cache invalidation and implementation for on-edit typecheck.

## Links

- [Preliminary list of literature][1]
- [Github repo with codebase][2]
- [Github repo with thesis text][3]

[1]: ./LITERATURE.md "References"
[2]: https://github.com/Uberch/rzk "Rzk"
[3]: https://github.com/Uberch/ThesisPaper "Thesis docs"
