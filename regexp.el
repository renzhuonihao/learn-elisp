(defun forward-sentence-my (&optional arg)
  "Read the code"
  (interactive "p")
  (or arg (setq arg 1))
  (while (< arg 0)
    (let ((par-bag
	   (save-excursion (start-of-paragraph-text) (point))))
      (if (re-search-forward
	   (concat sentence-end "[^ \t\n]") par-bag t)
	  (go-to-char (1- (match-end 0)))
	(go-to-char par-bag)))
    (setq arg (1+ arg)))
  (while (> arg 0)
    (let ((par-end
	   (save-excursion (end-of-paragraph-text) (point))))
      (if (re-search-forward sentence-end par-end t)
	  (skip-chars-backward " \t\n")
	(go-to-char par-end)))
    (setq arg (1- arg))))