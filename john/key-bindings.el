(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

; then define packages you use
(use-package fzf
             :bind ("C-t" . fzf))

(global-set-key (kbd "<C-M-left>") 'back-to-indentation)
;;(global-set-key (kbd "C-t") 'fzf)
(global-set-key (kbd "C-f") 'forward-sexp)
(global-set-key (kbd "C-S-f") 'backward-sexp)
(global-set-key (kbd "C-S-s") 'isearch-backward)
(global-set-key (kbd "s-/") 'comment-region)
(global-set-key (kbd "s-?") 'uncomment-region)
(global-set-key (kbd "C-z") nil)
(global-set-key (kbd "C-x s") 'save-buffer)
(global-set-key (kbd "M-z") 'undo)
(global-set-key (kbd "M-c") 'kill-ring-save)
(global-set-key (kbd "M-v") 'yank)
