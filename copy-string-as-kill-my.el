(defun copy-string-as-kill-my (beg end)
  "Read the codes"
  (interactive "r")
  (if (eq last-command 'kill-region)
      (kill-append (buffer-substring beg end) (< end beg))  ;1
    (setq kill-ring                                         ;2
	  (cons (buffer-substring beg end) kill-ring))
    (if (> (length kill-ring) kill-ring-max)
	(setcdr (nthcdr (1- kill-ring-max) kill-ring) nil)))
  (setq this-command 'kill-region)
  (setq kill-ring-yank-pointer kill-ring))
;解析该函数  假设连续几次调用 copy-string-as-kill-my和 kill-region,可以交叉调用，
;那么从第二次调用开始，走的都是1情况。而第一次调用，走的是2情况。1情况是给环的第一个元素加东西
;2情况是给环加一个新的元素。因此，几次连续的调用是给环上同一个元素加东西，得到的是同一个元素。中间穿插别的命令后，
;再连续调用，就是给环上给另一个元素加东西了。

(defun kill-append (string before-p)
  (setcar kill-ring
	  (if before-p
	      (concat string (car kill-ring))
	    (concat (car kill-ring) string))))
(defun kill-region-my (beg end)
  (interactive "*r")
  (copy-region-as-kill beg end)
  (delete-region beg end))

