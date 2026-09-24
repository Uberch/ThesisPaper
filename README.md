## Author

Vyacheslav Molchanov, B23-SD-02

## Topic

Improving interactivity and consistency of the Rzk Language Server through on-edit reevaluation.

## Problem Statement

This thesis provides Rzk language server with implementation for bufferization and handling several LSP requests, specifically `didOpen`, `didChange`, `didClose` and `didSave`. This allows language server to keep track of unsaved changes and deliver real-time diagnostics.

P.S. Picked this one, other options will be [here][4] for some time

## Links

- [Preliminary list of literature][1]
- [Github repo with codebase][2]
- [Github repo with thesis-related docs][3]

[1]: ./LITERATURE.md "References"
[2]: https://github.com/Uberch/rzk "Rzk"
[3]: https://github.com/Uberch/ThesisPaper "Thesis dosc"
[4]: ./prob_stmt.md "Potential alternative problem statements"
