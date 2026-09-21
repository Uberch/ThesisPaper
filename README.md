## Author

Vyacheslav Molchanov, B23-SD-02

## Topic

Improving interactivity and consistency of the Rzk Language Server through on-edit reevaluation.

## Problem Statement

Currently deciding which to pick.

Option 1
: Currently rzk language server reevaluates the project only on the save of 'rzk.yaml' file. The main goal of this thesis is to implement functionality that will allow language server to keep track of unsaved changes in IDE. As a result user will get responsive environment with no stale error/warning messages.

Option 2
: This thesis presents improvements structured around responsiveness to current implementation of the rzk language server. It introduces bufferization of unsaved changes and real-time evaluation of the project with respect to this buffer. This additions give user real-time feedback while editing files.

Option 3
: This thesis provides Rzk language server with implementation for bufferization and handling several LSP requests, specifically `didOpen`, `didChange`, `didClose` and `didSave`. This allows language server to keep track of unsaved changes and deliver real-time diagnostics without need to save the file.

## Preliminary list of literature

[References](./reference.md)

## Github repo for code

[Repo](https://github.com/Uberch/rzk)

## Github repo for thesis text

[Repo](https://github.com/Uberch/ThesisPaper)
