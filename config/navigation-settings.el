;; Avy
(use-package avy
  :ensure t
  :bind (("M-g g" . avy-goto-line)
         ("M-g w" . avy-goto-word-1)))

;; WindMove
(use-package windmove
  :bind (("C-. <up>" . windmove-up)
         ("C-. <left>" . windmove-left)
         ("C-. <right>" . windmove-right)
         ("C-. <down>" . windmove-down))
  )

;; Clean buffers
(require 'clean-buffers)
(global-set-key (kbd "C-x C-k") 'clean-buffers)

(provide 'navigation-settings)
