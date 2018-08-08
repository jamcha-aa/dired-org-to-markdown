# dired-org-to-markdown

dired-org-to-markdown converts multiple org-mode files to markdown.

This program is based on [abo-abo's dired-org-to-pdf](https://stackoverflow.com/questions/22072773/batch-export-of-org-mode-files-from-the-command-line). 

## Install

```emacs-lisp
;; auto-install
(auto-install-from-url "https://raw.github.com/jamcha-aa/dired-org-to-markdown/master/dired-org-to-markdown.el")
```
## .emacs.d/init.el

```emacs-lisp
(require 'dired-org-to-markdown)
```

# Usage
In a **dired** buffer, mark org files. Then **M-x dired-org-to-markdown**.

TIPS: `*%.org` automatically marks all of org files in the buffer.

[dired reference card](https://www.gnu.org/software/emacs/refcards/pdf/dired-ref.pdf)

## License

Copyright (c) 2014 stackoverflow.com. (c) 2018 jamcha (jamcha.aa@gmail.com).

This program is licensed under the [License Creative Commons Attribution Share Alike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/deed)  

![cc by-sa](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)  

