;; Google traductor
(use-package google-translate
  :ensure t
  :bind ("C-c t" . google-translate-smooth-translate)
  :init (require 'google-translate-smooth-ui))

(provide 'google-settings)
