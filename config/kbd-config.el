;; Useful global key bind
(global-set-key (kbd "C-\\") 'comment-line)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
;; magit
(use-package magit
  :config
  (progn
    (global-set-key (kbd "C-x g") 'magit-status)))
;; 打开最近打开的文件列表
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-c a") 'org-agenda)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
(provide 'kbd-config)
