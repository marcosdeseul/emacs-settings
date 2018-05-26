;;; ---------------------------------------------------------------
;; This deletes spaces until it sees any characters 
;; (non blank, tab, newline)
(defun my-delete-until-char ()
  "This function deletes chracters from current position to
place where non-blank char appears"
  (interactive)
  (save-excursion 
    (let ((currpos (point))
          (topos))
      (search-forward-regexp "[^\t\s\n]" nil 1)
      (setq topos (1- (point)))
      (and (< currpos topos) (kill-region currpos topos)))))

(define-key (current-global-map) "\C-cd" 'my-delete-until-char)
