;;; dired-org-to-markdown --- convert multiple org files to markdown

;; Copyright (C) 2014 stackoverflow.com. (c) 2018 jamcha.

;; Original Author: abo-abo <https://stackoverflow.com/users/1350992/abo-abo>
;; Original Source:
;; https://stackoverflow.com/questions/22072773/batch-export-of-org-mode-files-from-the-command-line
;; Author: jamcha <jamcha.aa@gmail.com>
;; Created: 2018-08-08
;; Version: 1.0
;; Package-Requires: ((emacs "24.4"))
;; Keywords: org-mode, markdown
;; URL: https://github.com/jamcha-aa/dired-org-to-markdown

;; This program is licenced under the Creative Commons Attribution
;; Share Alike 4.0 International
;; <https://creativecommons.org/licenses/by-sa/4.0/deed>

;;; Commentary:

;; dired-org-to-markdown converts multiple org files to markdown.

;;; Code:

(defun dired-org-to-markdown ()
  (interactive)
  (let ((files
         (if (eq major-mode 'dired-mode)
             (dired-get-marked-files)
           (let ((default-directory (read-directory-name "dir: ")))
             (mapcar #'expand-file-name 
                     (file-expand-wildcards "*.org"))))))
    (mapc
     (lambda (f)
       (with-current-buffer
           (find-file-noselect f)
         (org-md-export-to-markdown)))
     files)))
;;; gitbook-builder.el ends here
