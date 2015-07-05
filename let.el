(let ((birch 3)
      pine
      fir
      (oak 'some))
  (message
   "Here are %d variables with %s %s,and %s value."
   birch pine fir oak))
'()


;为了更好地理解let，执行下面的表达式
(let (x 2)
  nil)
;执行该let表达式后，会出错误，错误的信息：(wrong-type-argument listp 2)
;信息显示，错误的参数，2。可以推断该let表达式是这样执行的：先拆掉（x 2）的括号，解释器期望里面是列表，这时遇到x，默认赋值为nil，往后走遇到2，报错。
;为了验证我们的推断，将程序改成如下形式；
(let (x y)
  (if (and (equal nil x)
	   (equal nil y))
      (message "x and y are nil")))

