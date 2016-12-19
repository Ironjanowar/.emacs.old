(use-package sws-mode
  :ensure t)

(use-package jade-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.styl\\'" . sws-mode)))

(provide 'jade-settings)
