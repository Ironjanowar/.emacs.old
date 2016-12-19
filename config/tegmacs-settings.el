;; @rockneurotiko 's shit
(defun tegmacs-load ()
  (add-to-list 'load-path "~/Git/tegmacs")
  (load-file "/home/ironjanowar/.emacs.d/tegmacs/tegmacs.el")
  (require 'tegmacs)
  (setq tegmacs-message-mark-as-read nil)
  (setq tegmacs-notify-on-mention nil))

(tegmacs-load)

(provide 'tegmacs-settings)
