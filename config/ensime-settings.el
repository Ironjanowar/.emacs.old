(unless (assoc-default "melpa-stable" package-archives)
  (add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/")))

(use-package ensime
  :ensure t
  :pin melpa-stable)

(provide 'ensime-settings)
