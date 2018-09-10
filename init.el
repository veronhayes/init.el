;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(tool-bar-mode 0)
(menu-bar-mode 0)

(add-to-list 'load-path "~/.emacs.d/dash/")
(add-to-list 'load-path "~/.emacs.d/solarized/")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load-library "~/.emacs.d/rainbow/rainbow-delimiters.el")
(require 'rainbow-delimiters)

(load-library "~/.emacs.d/company/company.el")
(require 'company)

(setq geiser-active-implementations '(guile))
(load-library "~/.emacs.d/geiser/elisp/geiser.el")
(require 'geiser)

(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'after-init-hook 'global-company-mode)

(setq ring-bell-function 'ignore)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0eb173dcdd23dbc02e0a178c7e8d3d9a9697786c11ef68b77b8b6255d4163cfd" "d409bcd828a041ca8c28433e26d1f8a8e2f0c29c12c861db239845f715a9ea97" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(package-selected-packages (quote (clojure-mode-extra-font-locking cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'monokai t)

