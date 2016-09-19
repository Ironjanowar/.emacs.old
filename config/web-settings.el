;; php mode
(use-package php-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.php[345]?\\'\\|\\.inc\\'" . php-mode)))

;; json mode
(use-package json-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.json\\'\\|\\.jshintrc\\'" . json-mode)))

;; Web mode
(use-package web-mode
  :ensure t

  :init
  (defun my-web-mode-hook ()
    "Hooks for Web mode."
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (setq web-mode-code-indent-offset 4)
    (setq web-mode-enable-auto-pairing t)
    (setq web-mode-enable-css-colorization t)
    (setq web-mode-enable-current-element-highlight t)
    (setq web-mode-enable-current-column-highlight t)
    (setq web-mode-enable-auto-expanding t))
  
  :config
  (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.json\\'" . web-mode))
  (add-hook 'web-mode-hook 'my-web-mode-hook)
  )

;; Emmet mode
(use-package emmet-mode
  :ensure t

  :init
  (defun emmet-hook()
    (emmet-mode)
    (local-set-key (kbd "M-TAB") 'emmet-expand-line))
  
  :config
  ;; Auto-start on any markup modes
  (add-hook 'sgml-mode-hook 'emmet-hook)
  ;; enable Emmet's css abbreviation.
  (add-hook 'css-mode-hook  'emmet-hook))

;; Node repl
(use-package nodejs-repl
  :ensure t
  :config
  (defun my-jscallback ()
    (local-set-key (kbd "C-c C-e") 'nodejs-repl-send-buffer))

  (add-hook 'js-mode-hook 'my-jscallback))

(provide 'web-settings)
