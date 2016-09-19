;; Yasnippets
(use-package yasnippet
  :ensure t
  :init (yas-global-mode 1)
  :config
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  (define-key yas-minor-mode-map (kbd "<C-tab>") 'yas-expand)
  )

;; SmartParents
(use-package smartparens
  :ensure t
  :init (smartparens-global-mode 0))

;; Aggressive indent
(use-package aggressive-indent
  :ensure t
  :init
  (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
  (add-hook 'css-mode-hook #'aggressive-indent-mode)
  )

;; Auto complete
(use-package auto-complete
  :ensure t
  :config (ac-config-default))

;; Company mode
(use-package company-mode
  :init
  (add-hook 'after-init-hook 'global-company-mode))

;; You can use it with "C-c h" and show documentation next to company options.
(use-package company-quickhelp
  :ensure t
  :init (company-quickhelp-mode 1)
  :config (eval-after-load 'company
            '(define-key company-active-map (kbd "C-c h") #'company-quickhelp-manual-begin)))

;; Flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(provide 'programming-settings)

