(defun append-to-buffer-my (buffer start end)
  "To read the codes of append-to-buffer"
  (interactive "BAppend to buffer:\nr")
  (let ((oldbuf (current-buffer)))   ;注意此处let表达式的括号！
	(save-excursion
	  (set-buffer (get-buffer-create buffer))
	  (insert-buffer-substring oldbuf start end))))


;append-to-buffer-my函数从当前缓冲区拷贝一个区域到指定的缓冲区，三个参量，buffer代表目的
;缓冲区，另外两个代表当前缓冲区的区域的开始和结束位置。

;interactive函数此处有两个参数，使用\n将两个参数分开。B（代表buffer），
;告诉emacs要求输入缓冲区的名字
;并将名字传送给 append-to-buffer-my函数,和r(缓冲区中位点和标记点的位置)，告诉emacs将
;append-to-buffer-my函数后两个参数绑定到位点和标记上。
;
;save-excursion函数1.保存位点和标记的位置2当这个函数体中的其他表达式都倍求值后恢复位点和
;标记到相应位置3保存原始的缓冲区并恢复它
;
;set-buffer已知
;get-buffer-creat函数要么获得已命名的缓冲区，要么用给定的名字创建一个缓冲区
;
;insert-buffer-substring函数从第一个参量指定的缓冲区拷贝一个字符串，将其插入当前缓冲区

