(setq custom-file "~/.emacs.custom.el")
(setq display-line-numbers-type 'relative)

(add-to-list 'default-frame-alist '(font . "Iosevka-20"))

(ido-mode 1)
(ido-everywhere 1)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode)



(load custom-file 'NOERROR)

