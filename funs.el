;;fun message
(message "hello  %s  %d" "world"  12)
(message "yes %s" (concat "red" "flw"))


;;(set'arg1 'arg2)set函数的两个参量都要用引号限定起来
(set 'name '(ren zhuo))
(set 'name1 'renzhuo)
name
name1
;;setq函数和set的不同：1第一个参数不用引号引起来 2可以同时给多个符号赋值
(setq school '(kang jie school)
      class  '(484 class))
school
class
