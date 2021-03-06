;; auto linum
(global-linum-mode 1)

;; key binding
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; cmd - h to hide
(global-set-key (kbd "M-h") 'ns-do-hide-emacs)

;; neotree
(global-set-key (kbd "C-c t") 'neotree-toggle)

;; custom theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso)))
 '(js2-basic-offset 2)
 '(package-selected-packages
   (quote
    (swift3-mode dockerfile-mode neotree elixir-mode haskell-mode jsx-mode rjsx-mode protobuf-mode clojure-mode go-mode yaml-mode scala-mode scala-mode2 md-mode css-mode)))) ;; installed via melpa

;; emacs backup
;; http://ergoemacs.org/emacs/emacs_set_backup_into_a_directory.html
;; https://www.emacswiki.org/emacs/BackupDirectory
;; make backup to a designated dir, mirroring the full path

(defun my-backup-file-name (fpath)
  "Return a new file path of a given file path.
If the new path's directories does not exist, create them."
  (let* ((backupRootDir "~/.emacs.d/emacs-backup/")
	 (filePath (replace-regexp-in-string "[A-Za-z]:" "" fpath )) ; remove Windows driver letter in path, for example, “C:”
	 (backupFilePath (replace-regexp-in-string "//" "/" (concat backupRootDir filePath "~") )) )
    (make-directory (file-name-directory backupFilePath) (file-name-directory backupFilePath))
    backupFilePath))

(setq make-backup-file-name-function 'my-backup-file-name)

;; font
(set-default-font "Monaco 14")
(set-cursor-color "white")
(set-face-attribute 'region nil :background "#666" :foreground "#ffffff")

;; javascript hook
(require 'rjsx-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
(setq js2-strict-missing-semi-warning nil)
(setq js2-missing-semi-one-line-override nil)

;; css
(setq css-indent-offset 2)

;; golang
(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))
