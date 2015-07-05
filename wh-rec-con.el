;循环版本
(setq animal '(tiger cat monkey))
(defun print-animal (list)
  (while list
    (print (car list))
    (setq list (cdr list))))

(print-animal animal)


;递归版本
(defun rec-print-animal (list)
  (if (equal nil list)
      nil
    (progn
      (print (car list))
      (rec-print-animal (cdr list)))))

(rec-print-animal animal)

(defun con-test (num)
  (cond ((= num 0) 0)
	((> num 0) 1)
	((< num 0) -1)))
(con-test -99)

