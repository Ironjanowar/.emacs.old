;; Indent Fucking Whole Buffer (by github.com/skgsergio)
(defun iwb ()
  "Indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max))
  (message "Indent buffer: Done.")
  )

(global-set-key "\M-i" 'iwb)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Remove initial buffer
(setq inhibit-startup-screen t)

(provide 'general-settings)
