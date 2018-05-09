# Emacs Setup

### `~/.emacs` file

```
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
;; (package-install 'use-package)
(require 'use-package)

(defun load-directory (dir)
  (let ((load-it (lambda (f) (load-file (concat (file-name-as-directory dir) f)))))
    (mapc load-it (directory-files dir nil "\\.el$"))))

(load-directory "~/.emacs.d/marco-emacs-settings")
```

### install package using `package-list` cmd and a list of packagein `customize.el`

```
clojure-mode
go-mode
yaml-mode
scala-mode
scala-mode2
```