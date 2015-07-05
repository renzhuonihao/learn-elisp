(defun bigger-than-7 (number)
  "bigger than 7?"
  (interactive "p")
  (if (> number 7)
      (message "%d is bigger than 7" number)
    (message "%d is not bigger than 7" number)));不同尺度的缩进将if的两个语句区别开来
(bigger-than-7 0)
(bigger-than-7 9)

;lisp中的真假
(if 0
    (message "0 is true!")
  (message "0 is false"))
(if nil
    (message "nil is true")
  (message "nil is false"))
