
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/dotfiles/emacs/lisp/")

(require 'init-package)
(require 'init-keyboard)
(require 'init-view)
(require 'init-org-capture)
(require 'init-other)
(require 'init-org-agenda)
(require 'init-org-journal)
(require 'cursor-chg)
(require 'init-helm-config)
(require 'window-numbering) ;; 窗口数字化
;; (require 'ob-java) ;; run java in org-mode 
;; (require 'ob-python) ;; run java in org-mode 
(require 'buffer-move)          ;; move window when split window 
;; (require 'with-editor)       ;; 还不知道这个是干啥的
(require 'auto-save)            ;; 加载自动保存模块
(auto-save-enable)              ;; 开启自动保存功能
(require 'init-org-mode-conf)   ;; org-mode config 
(setq auto-save-slient t)       ;; 自动保存的时候静悄悄的， 不要打扰我

(window-numbering-mode 1)


;; 保证有 use-package 包
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'helm)
  (package-install 'swiper)
  (package-install 'use-package))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; test start

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; test end 


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (magit swiper dirtree use-package-el-get spaceline js2-mode spacemacs-theme nyan-mode helm-descbinds helm-projectile htmlize org-journal))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:foreground "#0066FF" :bold t)))))
