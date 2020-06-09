(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; (unless (package-installed-p 'yapfify)
;;   (package-refresh-contents)
;;   (package-install 'yapfify)
;; )

;; (use-package yapfify :config (add-hook 'before-save-hook
;;                                      (lambda ()
;;                                        (when (eq major-mode 'python-mode)
;;                                          (yapfify-buffer)))))