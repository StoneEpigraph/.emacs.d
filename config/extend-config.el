(window-numbering-mode t)
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
;; dired mode
(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
;; use chez scheme
;;  (setq geiser-active-implementations '(chez))
;; user mit-scheme
(setq scheme-program-name "mit-scheme")
;; scheme
(add-to-list 'exec-path "/usr/bin")
;; (setq scheme-program-name "scheme")
;; (setq geiser-chez-binary "chez")
;; (setq geiser-active-implementations '(chez))
;; all the icons
(use-package all-the-icons)
;;racket配置,设置解释器,自动补全,代码执行等
(require 'racket-mode)
(setq racket-racket-program "racket")
(setq racket-raco-program "raco")
(add-hook 'racket-mode-hook
          (lambda ()
            (define-key racket-mode-map (kbd "C-x C-j") 'racket-run)))
(setq tab-always-indent 'complete) 
(provide 'extend-config)
