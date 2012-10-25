; disable scrollbars and menu bar on the mac
; disable it with .Xdefaults in linux
(when (string-equal system-type "darwin")
  (when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
  (when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
  (when (fboundp 'menu-bar-mode) (menu-bar-mode -1)))

; default tab-width is two spaces
(setq-default tab-width 2
              indent-tabs-mode nil)

; show column numbers
(column-number-mode 1)

; email settings
(setq user-full-name "Petar Radosevic")
(setq user-mail-address "petar@wunki.org")

; unicode
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

; browser on Arch Linux
(if (string-equal system-type "gnu/linux")
    (setq browse-url-browser-function 'browse-url-generic
          browse-url-generic-program "conkeror"))

; flash instead of bell
(setq visible-bell t)
(setq ring-bell-function (lambda nil (message "")))

; highlight the current line
(global-hl-line-mode 1)

; always show the region
(setq transient-mark-mode t)

; format the title-bar to always include the buffer name
(setq frame-title-format " %b (%m)")

; autoselect window with mouse
(setq mouse-autoselect-window t)

; dont show the GNU splash screen
(setq inhibit-startup-message t)

; dont ask for yes or no, just use y or n
(fset 'yes-or-no-p 'y-or-n-p)

; auto-fill-mode settings
(setq-default fill-column 78)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

; truncate long lines
(setq-default truncate-lines nil)

; run the emacs server
(load "server")
(unless (server-running-p) (server-start))

; european dates
(setq calendar-date-style 'european)

; spelling
(setq ispell-program-name "aspell")
(setq ispell-list-command "list")

; keychain
(vendor 'keychain-environment)
(keychain-refresh-environment)

; slime
(vendor 'slime)

; ack aliases
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)

; call me nuts but I only want lowercase on my linux system
(setq dropbox-directory (if (string-equal system-type "gnu/linux")
                            (expand-file-name "~/dropbox")
                          (expand-file-name "~/Dropbox")))

; save that theme is safe
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("be7eadb2971d1057396c20e2eebaa08ec4bfd1efe9382c12917c6fe24352b7c1" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
