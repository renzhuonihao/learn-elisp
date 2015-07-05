(defun insert-buffer-my (buffer)
  "Read the code"
  (interactive "*bInsert buffer: ")
  (or (bufferp buffer)
      (setq buffer (get-buffer buffer)))
  (let (start end newmark)
    (save-excursion
      (save-excursion
	(set-buffer buffer)
	(setq start (point-min)
	      end (point-max)))  ;将buffer的开头结尾标记下，并回到当前缓冲区
      (insert-buffer-substring buffer start end)  ;将buffer内容插入到当前缓冲区
      (setq newmark (point)))            ;回到当前缓冲区
    (push-mark newmark)))               ;重新标记

;牛X函数，现在才知道字处理也是很复杂的！

;该函数效果：将buffer缓冲区的所有内容插入到当前缓冲区内，窗口仍在当前缓冲区，光标/位点在原来位置，并在插入字符串的尾部做上标记

;interactive函数用到两个参数：*用于缓冲区是只读缓冲区的情况，万一被拷贝的缓冲区是只读的呢，*不用\与第二个参数隔开。“b”告诉解释器，函数的参量buffer应该是个存在的缓冲区或该缓冲区的名字，如果找不到解释器就报警

;or：对它的几个参量逐个求值，并返回第一个不是nil的参量o的值。这里可用if表达式重写

;bufferp：谓词，看是不是个缓冲区

;get-buffer：同 get-buffer-creat函数

;