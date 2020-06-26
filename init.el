



;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; base
;;      Setup pkg repo and install use-package
;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(require 'package)
(setq package-enable-at-startup nil)

(unless (assoc-default "melpa" package-archives)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))
(unless (assoc-default "org" package-archives)
  (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t))
(unless (assoc-default "marmalade" package-archives)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(setq use-package-verbose t)
(setq use-package-always-ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 1)
 '(custom-enabled-themes (quote (doom-spacegrey)))
 '(custom-safe-themes
   (quote
    ("82360e5f96244ce8cc6e765eeebe7788c2c5f3aeb96c1a765629c5c7937c0b5b" "e7666261f46e2f4f42fd1f9aa1875bdb81d17cc7a121533cad3e0d724f12faf2" "de43de35da390617a5b3e39b6b27c107cc51271eb95cceb1f43d13d9647c911d" "e47c0abe03e0484ddadf2ae57d32b0f29f0b2ddfe7ec810bd6d558765d9a6a6c" "6cbf6003e137485fb3f904e76fb15bc48abc386540f43f54e2a47a9884e679f6" "bc99493670a29023f99e88054c9b8676332dda83a37adb583d6f1e4c13be62b8" "5091eadbb87fa0a168a65f2c3e579d1a648d764f12ab9d3ab7bdefca709cd2a5" "32fd809c28baa5813b6ca639e736946579159098d7768af6c68d78ffa32063f4" "9d54f3a9cf99c3ffb6ac8e84a89e8ed9b8008286a81ef1dbd48d24ec84efb2f1" "a4b9eeeabde73db909e6b080baf29d629507b44276e17c0c411ed5431faf87dd" "dc677c8ebead5c0d6a7ac8a5b109ad57f42e0fe406e4626510e638d36bcc42df" "1ca1f43ca32d30b05980e01fa60c107b02240226ac486f41f9b790899f6f6e67" "15ba8081651869ec689c9004288bed79003de5b4ee9c51a9d4a208d9e3439706" "eb94e44599a45c495ad472ad551a40b87cbc4bae9631211e7a78d72b102c61b1" "1897b97f63e91a792e8540c06402f29d5edcbfb0aafd64b1b14270663d6868ee" "a02836a5807a687c982d47728e54ff42a91bc9e6621f7fe7205b0225db677f07" "4b0b568d63b1c6f6dddb080b476cfba43a8bbc34187c3583165e8fb5bbfde3dc" "a4fa3280ffa1f2083c5d4dab44a7207f3f7bcb76e720d304bd3bd640f37b4bef" "c6b93ff250f8546c7ad0838534d46e616a374d5cb86663a9ad0807fd0aeb1d16" "92d8a13d08e16c4d2c027990f4d69f0ce0833c844dcaad3c8226ae278181d5f3" "b60f08ddc98a95485ec19f046a81d5877b26ab80a67782ea5b91a00ea4f52170" "5c9a906b076fe3e829d030a404066d7949e2c6c89fc4a9b7f48c054333519ee7" "41039913efab185af1ec1b13ff4df36d6941994d5e3dee39791f30fcd94b42be" "669e05b25859b9e5b6b9809aa513d76dd35bf21c0f16d8cbb80fb0727dc8f842" "4a9f595fbffd36fe51d5dd3475860ae8c17447272cf35eb31a00f9595c706050" "a9c619535d63719a15f22e3c450a03062d3fed1e356ef96d33015849c4c43946" "5e0b63e0373472b2e1cf1ebcc27058a683166ab544ef701a6e7f2a9f33a23726" "8c75e2bdf8d1293c77a752dd210612cfb99334f7edd360a42a58a8497a078b35" "fe76f3d5094967034192f6a505085db8db6deb0e135749d9a54dc488d6d3ee2f" "0fe9f7a04e7a00ad99ecacc875c8ccb4153204e29d3e57e9669691e6ed8340ce" "423435c7b0e6c0942f16519fa9e17793da940184a50201a4d932eafe4c94c92d" "dd854be6626a4243375fd290fec71ed4befe90f1186eb5b485a9266011e15b29" "41c8c11f649ba2832347fe16fe85cf66dafe5213ff4d659182e25378f9cfc183" default)))
 '(ensime-sem-high-faces
   (quote
    ((var :foreground "#9876aa" :underline
	  (:style wave :color "yellow"))
     (val :foreground "#9876aa")
     (varField :slant italic)
     (valField :foreground "#9876aa" :slant italic)
     (functionCall :foreground "#a9b7c6")
     (implicitConversion :underline
			 (:color "#808080"))
     (implicitParams :underline
		     (:color "#808080"))
     (operator :foreground "#cc7832")
     (param :foreground "#a9b7c6")
     (class :foreground "#4e807d")
     (trait :foreground "#4e807d" :slant italic)
     (object :foreground "#6897bb" :slant italic)
     (package :foreground "#cc7832")
     (deprecated :strike-through "#a9b7c6"))))
 '(fci-rule-color "#9e9e9e")
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(jdee-db-active-breakpoint-face-colors (cons "#fafafa" "#3b6ea8"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#fafafa" "#4f894c"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#fafafa" "#bdbdbd"))
 '(objed-cursor-color "#99324b")
 '(org-agenda-files (quote ("~/")))
 '(package-selected-packages
   (quote
    (doom-themes paredit-everywhere racket-mode vue-mode company-nginx darcula-theme paredit 0blayout live-py-mode 2048-game youdao-dictionary ansible ppp mvn jdee flycheck window-numbering web-mode quelpa-use-package pipenv python-mode highlight-parentheses dash-functional counsel-dash smartparens js2-mode org-bullets counsel swiper doom-modeline all-the-icons yaml-mode slime slime-company window-number company markdown-mode highlight-parentheses smartparens web-mode window-Numbering Counsel racket-mode)))
 '(pdf-view-midnight-colors (cons "#fafafa" "#2a2a2a"))
 '(vc-annotate-background "#fafafa")
 '(vc-annotate-color-map
   (list
    (cons 20 "#4f894c")
    (cons 40 "#688232")
    (cons 60 "#817b19")
    (cons 80 "#9a7500")
    (cons 100 "#a0640c")
    (cons 120 "#a65419")
    (cons 140 "#ac4426")
    (cons 160 "#a53f37")
    (cons 180 "#9e3a49")
    (cons 200 "#97365b")
    (cons 220 "#973455")
    (cons 240 "#983350")
    (cons 260 "#99324b")
    (cons 280 "#a25467")
    (cons 300 "#ab7784")
    (cons 320 "#b49aa0")
    (cons 340 "#9e9e9e")
    (cons 360 "#9e9e9e")))
 '(vc-annotate-very-old-color nil)
 '(word-wrap nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(electric-pair-mode t)
(ivy-mode 1)
(package-initialize)
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")))
(global-linum-mode t);; show linenumber
(column-number-mode t);; show linenumber in status bar
(show-paren-mode t);; 括号匹配高亮
(global-hl-line-mode 1);; 当前行高亮
(tool-bar-mode 0);; 不显示工具栏
(menu-bar-mode 0);; 不显示菜单栏
(scroll-bar-mode 0);; 不显示滚动条
(display-time-mode 1);;显示时间
(global-hl-line-mode t);;
(display-battery-mode t) ;;
(fset 'yes-or-no-p 'y-or-n-p)
;; file edit settings
(setq tab-width 2
      inhibit-splash-screen t
      initial-scratch-message nil
      sentence-end-double-space nil
      make-backup-files nil
      indent-tabs-mode nil
      auto-save-default nil)
;; config font
(set-face-attribute 'default nil
                    :family "Ubuntu Mono"
                    :height 130
                    :weight 'medium
                    :width 'medium)

(if (display-graphic-p)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset (font-spec :family "Microsoft Yahei"
                                           :size 14)))
  )

(setq display0time-24hr-format t);; 显示时间
;;(set-frame-position (selected-frame) 20 20)
;;(set-frame-width (selected-frame) 220)
;;(set-frame-height (selected-frame) 125)
;; 全屏

;; (setq initial-frame-alist '((top . 0) (left . 0) (width . 175) (height . 70)))
(put 'upcase-region 'disabled nil)
;; (toggle-truncate-lines 1) ;; 自动换行。
(setq truncate-lines t)
(global-auto-revert-mode t) ;; 自动加载已修改的文
(add-hook 'after-init-hook 'global-company-mode)
(setq toggle-truncate-lines 1)
;; (set-default 'truncate-lines t)
;; 显示历史打开的文件
(require 'recentf)
(recentf-mode 1)
;; (recentf-max-menu-items 25)
;; (recentf-max-saved-items 500)

;; disable auto backup files
(setq make-backup-files nil)
;; disable welcome page
(setq inhibit-splash-screen t)

;; neotree
(use-package all-the-icons)
(use-package neotree
	     :config
	     (progn
	       (setq neo-smart-open t)
	       (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;; 	       (setq neo-window-fixed-size nil)
	       (setq-default neo-show-hidden-files t)
	       (global-set-key [f2] 'neotree-toggle)
	       (global-set-key [f8] 'neotree-refresh)
	       ))



(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)

;; (setq split-height-threshold nil)
(setq split-width-threshold 0)
;; smartparens
(require 'smartparens-config)
;;js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" .js2-mode))
;; highlight-paretheses
;; (require 'highlight-parentheses)
(global-highlight-parentheses-mode)
;; dired mode
(put 'dired-find-alternate-file 'disabled nil)

;; web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;; web mode ident offset
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; 递归遍历加载路径，将这些路径加入到加载列表中
(defun add-subdirs-to-load-path(dir)
  "Recursive add directories to `load-path`"
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))
;; 递归加载~/.emacs.d/config/目录
(add-subdirs-to-load-path "~/.emacs.d/config/")

(require 'kbd-config)
(require 'org-config)
(require 'extend-config)
