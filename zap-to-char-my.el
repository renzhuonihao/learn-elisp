;;version 19
;该函数将从当前位点到某一字符位置(向后剪切)的字符串全部剪切掉o
(defun zap-to-char-my (arg char)
  "Read the code of this function"
  (interactive "*p\ncZap to char")
  (kill-region (point)
	       (progn
		 (search-forward
		  (char-to-string char) nil nil arg)
		 (point))))

;version 18,区别在 kill-region的第二个参数
(if (search-forward (char-to-string char) nil t arg)
    (progn (goto-char
	    (if (> arg 0)
		(1- (point))
	      (1+ (point))))
	    (point))  ;这个（point）感觉没必要，goto-char会返回位置的值的。
  (if (> arg 0)
      (point-max)
    (point-min)))

(defun kill-region-my (beg end)
  (interactive "*r")
  (copy-region-as-kill beg end)
  (delete-region beg end))