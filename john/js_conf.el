(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(unless (package-installed-p 'prettier-js)
  (package-refresh-contents)
  (package-install 'prettier-js))

(unless (package-installed-p 'flycheck)
  (package-refresh-contents)
  (package-install 'flycheck))

(require 'flycheck)
(require 'prettier-js)

(use-package prettier-js :config
(add-hook 'css-mode-hook 'prettier-js-mode)
(add-hook 'json-mode-hook 'prettier-js-mode)
(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'js-mode-hook 'prettier-js-mode))

(use-package flycheck :config (setq flycheck-javascript-eslint-executable
      "~/grid/client/node_modules/.bin/eslint")
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode)))
