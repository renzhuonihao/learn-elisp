;;理解解释器的工作

(setq  renzhuo 33)
(defun renzhuo (x)
  (* x x))

;;假设[代表光标的位置，预测以下几个C-x C-e的结果
renzhuo[
(renzhuo 2)[

(dou 2 3)[
dou[

(+ 2 3)[
(+[ 2 3)

(+ (+ 2 3) 4 5)[
(+ (+ 2 3)[ 4 5)