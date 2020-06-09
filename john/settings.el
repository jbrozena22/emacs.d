(setq x-select-enable-clipboard t 
      x-select-enable-primary t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package fill-column-indicator :config (setq fci-rule-column 80)
  (add-hook 'python-mode-hook (lambda ()
    (fci-mode 1)
  )))