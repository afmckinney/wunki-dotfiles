;; place to save customizations
(setq custom-file "~/.emacs.d/wunki-custom.el")
(require 'cl)

;; load main configuration
(when (file-exists-p custom-file)
  (load custom-file))

;; package repositories
(setq package-archives '(("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")))
(package-initialize)

;; my packages
(dolist (p '( ;; fundamentals
             magit gist ack-and-a-half auto-complete jabber
             buffer-move s projectile goto-last-change
             expand-region change-inner powerline surround
             idomenu diminish dired-details multiple-cursors ag
             restclient quack geiser rainbow-delimiters calfw
             smex smartparens evil

             ;; modes
             org org-plus-contrib pandoc-mode markdown-mode
             git-commit-mode gitconfig-mode gitignore-mode
             js2-mode yaml-mode pretty-mode-plus ido-ubiquitous
             flx-ido undo-tree ace-jump-mode web-mode

             ;; languages
             nrepl ac-nrepl ac-slime clojure-mode
             clojure-test-mode cljdoc clojurescript-mode
             haskell-mode ghc rust-mode elpy slime slime-repl
             
             ;; themes
             zenburn-theme color-theme-sanityinc-tomorrow
             color-theme-sanityinc-solarized))
  (when (not (package-installed-p p))
    (package-install p)))

;; configuration files
(setq config-dir (file-name-directory
                  (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path config-dir)

(require 'wunki-defuns)     ; my functions
(require 'wunki-modes)      ; settings for specific modes
(require 'wunki-bindings)   ; load bindings
(require 'wunki-theme)      ; set the theme and font
(require 'wunki-temp)       ; temporary files
(require 'wunki-org)        ; org-mode
(require 'wunki-shell)      ; shell mode
(require 'wunki-lisp)       ; lisp languages
(require 'wunki-scheme)     ; scheme languages
(require 'wunki-haskell)    ; haskell
(require 'wunki-erlang)     ; erlang
(require 'wunki-python)     ; python
(require 'wunki-rust)       ; rust
(require 'wunki-erc)        ; irc
(require 'wunki-jabber)     ; jabber
;; (require 'wunki-evil)       ; vim emulation

(when (eq system-type 'darwin)
  (require 'wunki-mac))     ; mac settings

;; email only on my local computer
(when (string-equal system-name "thinkpad.wunki.org")
  (require 'wunki-mu4e))
