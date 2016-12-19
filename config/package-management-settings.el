;; Melpa
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; Use package
(when (not (package-installed-p 'use-package))
  (package-install use-package))

(use-package package
  :config
  (add-to-list 'package-archives
               '("melpa-stable" . "http://stable.melpa.org/packages/") t)
  (package-initialize))

(provide 'package-management-settings)
