(defun beginning-of-buffer-my (&optional arg)
  "Try to do it by myself"
  (interactive "P")
  (push-mark)
  
  (goto-char
   (if (equal nil arg)
       (point-min)
     (progn
       (message "%d/10" arg)
       (/ (* arg (point-max)) 10)))))
;自己版本的 beginning-of-buffer
