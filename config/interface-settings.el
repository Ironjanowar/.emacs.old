;; Bars
(when window-system
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (scroll-bar-mode -1))

;; Theme
(use-package darkokai-theme
  :ensure t
  :config (load-theme 'darkokai t))

;; Hydra
(use-package hydra
  :ensure t
  )

;; Emojify
(use-package emojify
  :ensure t
  :init (global-emojify-mode)
  )

;; Calendar starts on monday!!
(setq calendar-week-start-day 1)

;; Tamanio de letra
(set-face-attribute 'default (selected-frame) :height 100)

;; Smartparens
(use-package autopair
  :ensure t
  :init (autopair-global-mode t)
  )

;; Highlight current line
(global-hl-line-mode t)

;; Paren-mode
(show-paren-mode t)

;; Linum-mode
(global-linum-mode 1)

;; Highligth parenthesis
(show-paren-mode 1)

;; ido-mode
(use-package ido-vertical-mode
  :ensure t
  :init
  (setq ido-vertical-define-keys 'C-n-and-C-p-only)  
  
  :config
  (ido-mode 1)
  (ido-vertical-mode 1)
  (ido-everywhere)

  ;; Set ido for M-x commands also
  (global-set-key
   "\M-x"
   (lambda ()
     (interactive)
     (call-interactively
      (intern
       (ido-completing-read
	"M-x "
	(all-completions "" obarray 'commandp))))))

  )

(provide 'interface-settings)
