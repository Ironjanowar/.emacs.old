
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config/")
(add-to-list 'load-path "~/.emacs.d/plugins/")

(require 'package-management-settings)

(require 'interface-settings)

(require 'navigation-settings)

(require 'visual-settings)

(require 'programming-settings)

(require 'programming-language-settings)

(require 'editing-settings)

(require 'google-settings)

(require 'general-settings)

(require 'reveal-settings)

(require 'version-control-settings)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("74278d14b7d5cf691c4d846a4bbf6e62d32104986f104c1e61f718f9669ec04b" default)))
 '(package-selected-packages
   (quote
    (ox-reveal alchemist scala-mode elm-mode auctex move-text elpy jedi jinja2-mode js2-mode sudo-edit lua-mode matlab-mode google-translate magit multiple-cursors yasnippet use-package smartparens rainbow-mode rainbow-delimiters hydra helm haskell-mode flycheck emojify darkokai-theme company-quickhelp avy auto-complete aggressive-indent))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
