;; org-bullets
(add-hook 'org-mode-hook 'org-bullets-mode)
;; org-agenda
;; (setq org-agenda-fies '("~/resource/nutStore/我的坚果云/todo.org"))
;; orgmode truncate lines
(add-hook 'org-mode-hook
	  (lambda () (setq truncate-lines nil)))
;; 修改日程状态字段。
;; 如果想在插入的时候插入时间及当前状态之前的状态需要添加!
;; 如果想在改变状态的时候输入说明需要添加@
;; 如果需要同时添加@和!需要在两个特殊字符之前添加/
(setq org-todo-keywords
      '((sequence "TODO(t)" "BUG(b)" "WAITING(w@/!)" "|" "FIXED(f)")
	(sequence "MAYBE(m)" "|" "DONE(d!)" "CANCELED(c@/!)")))
;; (custom-set-variables
;;   '(org-agenda-files (quote ("~/resource/nutStore/我的坚果云/todo.org")))
;; )

(defun org-summary-todo (n-done n-not-done)
      "Switch entry to DONE when all subentries are done, to TODO otherwise."
      (let (org-log-done org-log-states)   ; turn off logging
        (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)
(provide 'org-config)
