;;;;
;; Helmuth additions
;;;;

;; Company mode allows for autocompletion and listing of possible completions
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

;; Rainbow parens
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; Paredit hooks for square and curly braces
(add-hook 'clojure-mode-hook '(lambda () (define-key clojure-mode-map "\M-[" 'paredit-wrap-square)))
(add-hook 'clojure-mode-hook '(lambda () (define-key clojure-mode-map "\M-{" 'paredit-wrap-curly)))

;;;;
;; Clojure
;;;;

;; Enable paredit for Clojure
;(add-hook 'clojure-mode-hook 'enable-paredit-mode)

;; enable paredit in your REPL
;(add-hook 'cider-repl-mode-hook 'paredit-mode)


;; This is useful for working with camel-case tokens, like names of
;; Java classes (e.g. JavaClassName)
(add-hook 'clojure-mode-hook 'subword-mode)


;;;;
;; Cider
;;;;

;; provides minibuffer documentation for the code you're typing into the repl
(add-hook 'cider-mode-hook 'eldoc-mode)

;; go right to the REPL buffer when it's finished connecting
(setq cider-repl-pop-to-buffer-on-connect t)

;; When there's a cider error, show its buffer and switch to it
(setq cider-show-error-buffer t)
(setq cider-auto-select-error-buffer t)

;; Where to store the cider history.
(setq cider-repl-history-file "~/.emacs.d/cider-history")

;; Wrap when navigating history.
(setq cider-repl-wrap-history t)

;; Use clojure mode for other extensions
(add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.boot$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.cljs.*$" . clojure-mode))
(add-to-list 'auto-mode-alist '("lein-env" . enh-ruby-mode))
