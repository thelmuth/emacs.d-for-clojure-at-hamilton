;; Split window vertically
(setq split-width-threshold 1)

;; Don't require newline
(setq require-final-newline nil)

;; save backup files to same location
(setq backup-directory-alist `(("." . "~/.emacs-backups")))

;; make sure emacs makes backups by copying
(setq backup-by-copying t)

;; Number of backups versions
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;; Automatically detect and show changes to files on disk
;; Useful for version control
(global-auto-revert-mode t)

; Turns off emacs toolbar in GUI mode
(if window-system
    (tool-bar-mode -1))

; Inhibit startup window
(if window-system
    (setq inhibit-startup-message t))

; Make all yes/no questions y/n
(fset 'yes-or-no-p 'y-or-n-p)

; RET does newline-and-indent
(add-hook 'clojure-mode-hook '(lambda ()
  (local-set-key (kbd "RET") 'newline-and-indent)))
