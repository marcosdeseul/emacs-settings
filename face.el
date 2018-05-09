;; font
(set-default-font "Monaco 14")

;; auto linum
(global-linum-mode 1)

;; key binding
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; cmd - h to hide
(global-set-key (kbd "M-h") 'ns-do-hide-emacs)

;; custom theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso)))
 '(package-selected-packages
   (quote
    (clojure-mode go-mode yaml-mode scala-mode scala-mode2)))) ;; installed via melpa
