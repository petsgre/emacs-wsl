(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; 使用use-package下载一些包
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; 添加redo undo 树
(use-package undo-tree
  :ensure t
  :init
    (global-undo-tree-mode))
;; magit
(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)
	          ("C-x C-g" . magit-status)))

(global-set-key (kbd "C-c SPC")   'set-mark-command)

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-set-key (kbd"C-x C-j") 'dired-jump)
;; 下面都是自动生成的日志
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package))
 '(warning-suppress-log-types
   '((use-package)
     (use-package)
     (use-package)
     (use-package)
     (use-package)
     (use-package)
     (use-package)
     (use-package)
     (use-package)))
 '(warning-suppress-types
   '((use-package)
     (use-package)
     (use-package)
     (use-package)
     (use-package)
     (use-package)
     (use-package)
     (use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
