;(ido-mode t)
;(winner-mode t)
;(windmove-default-keybindings)

;; agenda table
(setq org-hide-leading-stars t)
 (define-key global-map "\C-ca" 'org-agenda)
 (setq org-log-done 'time)


(provide 'init-other)
