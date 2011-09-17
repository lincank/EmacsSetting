;; Highlight regions and add special behaviors to regions
;; 'C-h transient' for more info
(setq transient-mark-mode t)

;; Display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; 'y or n' instead of 'yes or no'
(fset 'yes-or-no-p 'y-or-n-p)

;; Gotta see matching parens
(show-paren-mode t)

;; Make sure all backup files only file in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; trail whitespace is unnecessary
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; Auto complete
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)