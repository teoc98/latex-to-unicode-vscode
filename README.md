# LaTeX to unicode

These code snippets allow the insertion of unicode symbols from the corresponding LaTeX commands. When editing a plaintext file, it provides autocompletions for LaTeX symbols, which are triggered on `\`.

The list of symbols is currently generated from the [Coq Integrated Development Environment](https://coq.inria.fr/refman/practical-tools/coqide.html) LaTeX-to-unicode tool, using [this script](https://github.com/coq/coq/blob/master/ide/coqide/default_bindings_src.ml). 

To install, copy the file with extension `.code-snippets` in the user snippets folder (see [the Visual Studio Code user guide](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_create-your-own-snippets)). 
To regenerate the snippets, use the Makefile. 
