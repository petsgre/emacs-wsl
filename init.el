(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; 使用use-package下载一些包
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;; ivy 结合增强
(use-package ivy
  :ensure t
  :diminish ivy-mode
    :hook (after-init . ivy-mode))
(electric-pair-mode 1)

(use-package fzf
  :ensure t)


(use-package swiper
  :ensure t
  :bind
  ("C-r" . swiper))

(use-package yasnippet
  :ensure
  :init
  (yas-global-mode 1))

;; (add-to-list 'load-path "../lsp-bridge")
;; (require 'yasnippet)
;; (yas-global-mode 1)
;; (require 'lsp-bridge)
;; (global-lsp-bridge-mode)

(use-package web-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode)))

(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
	      ("s-p" . projectile-command-map)
	      ("C-c p" . projectile-command-map)))

;; 添加redo undo 树
(use-package undo-tree
  :ensure t
  :init
  (global-undo-tree-mode))

(use-package linum
  :init
  (progn
    (global-linum-mode t)
    (setq linum-format "%4d  ")
    (set-face-background 'linum nil)
        ))

(use-package try
  :ensure t)
;; magit
(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)
	 ("C-x C-g" . magit-status)))
;; which key
(use-package which-key
  :ensure t
  :config
    (which-key-mode))

;; auto-complete
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))

;; lsp mode
(use-package lsp-mode
  :ensure t)


;; wsl下选中
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
