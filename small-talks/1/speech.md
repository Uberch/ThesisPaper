
---
# Improving interactivity and consistency of the Rzk Language Server through on-edit reevaluation.

Hello, everyone.
My name is Vyacheslav and today I am presenting you my thesis.

---
# Rzk

To understand why we need to improve Rzk language server,
we should first know what the Rzk is and what is it used for.
Rzk is an interactive theorem prover based on Riehl and Shulman's type theory for synthetic infinite-categories.
It was developed by Nikolai Kudasov and first released in 2023.

IDE tooling such as LSP server is crucial for shortening feedback loop and
simplifying the workflow in general, especially for
users who are not familiar with some programming concepts,
which is relevant, because theorem provers are widely used by mathematicians
and they can sometimes lack software enginereeng knowledge.

---
# State of Rzk LSP server

Rzk has embedded language server implemented as a part of compiler itself.
However it lacks some important functionality like VFS-aware typechecker or
edit-trigerred evaluation and
has unoptimal cache invalidation on the level of modules.
It is not notable in current save-triggered setting,
but it can vastly delay diagnostics on big projects when moved to edit-triggered evaluation.

---
# Problem statement

The purpose of this thesis is improving user experience through shortening feedback loop.
To achieve it, the typechecker should be modified to read virtual file system whenever possible,
strategy for edit-trigger should be designed and applied and
module cache invalidation should be reworked.
As a result we expect lower latencies for compilation of big projects after changes in early stages of the project.
Now we should explore how other theorem provers implement same functionality.

---
# State of the Art: `agda --lsp`

Agda evaluates only upon saving file or explicitly requesting evaluation.
It caches compilation results for each file, but if file has changed, then file reevaluated completely.

---
# State of the Art: `Lean.Server`

Lean starts reevaluation after each edit.
It caches each declaration in file and compiled cache for each module.

---
# State of the Art: `coq-lsp`

`coq-lsp` has timeout after each keystroke before the reevaluation started,
collecting user edits in one batch.
It stores compiled module cache for project compilation.
However for live diagnostics it caches declarations
in file as flat list and invalidates them starting from changed one.

---
# Plan of work

To achieve the set goal the following plan is formed:
First, I need to make typechecking read buffered changes
Second, design and implement edit-trigerred evaluation
Third, with basis established in previous steps, I need to add strategy for module caching.
Fourth, I want to ensure the correctness of applied changes and evaluate the results.

---
# References

1. [A type theory for synthetic ∞-categories](https://arxiv.org/abs/1705.07442)
2. [Formalizing the Infinite-Categorical Yoneda Lemma](https://dl.acm.org/doi/10.1145/3636501.3636945)
3. [Simplicial HoTT and synthetic ∞-categories](https://rzk-lang.github.io/sHoTT/)

---
# Thank

Thank you for your attention and I am ready to answer your questions.
