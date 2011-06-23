; shortcuts
(global-set-key (kbd "C-c g") 'magit-status)

; map execute command to the C-key
; less hand movement with this command
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)

; kill word and avoid using the backspace
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-c C-k") 'kill-region)

; no mailing, thanks
(global-unset-key (kbd "C-x m"))
(global-unset-key (kbd "C-z"))

; set the command key as meta
(setq mac-command-modifier 'meta)
