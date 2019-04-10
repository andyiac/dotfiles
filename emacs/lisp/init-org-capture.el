;; agenda table
(setq org-hide-leading-stars t)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)

;; org capture
(require 'org)
(setq org-directory "~/org/inbox")
(setq org-default-notes-file (concat org-directory "/Capture.org"))
(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/inbox/gtd.org" "GTD")
	           "* TODO [#A]  %?\nSCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n  %a")

    	("j" "Journal" entry (file+datetree  "~/org/inbox/journal.org")
             "* %<%H:%M> %?\n")

    	("n" "Read notes with link " entry (file+headline "~/org/inbox/notes.org" "Notes")
             "* %?\nEntered on %U %a")

    	("x" "buffer " entry (file+headline "~/org/inbox/buffer.org" "BUFFER")
             "* %?\n \n  SCHEDULED: <%<%Y-%m-%d %H:%M>>")

    	("e" "Emacs tips" entry (file+headline "~/org/inbox/emacs-tips.org" "emacs tips")
             "* %?\n ")

	("v" "vocabulary" entry (file+headline "~/org/inbox/vocabulary.org" "Vocabulary")
             "* %?\n")
        ))

(define-key global-map "\C-ci"
  (lambda () (interactive) (org-capture nil "i")))

(define-key global-map "\M-m"
  (lambda () (interactive) (org-capture nil "x")))


;; From  http://pragmaticemacs.com/emacs/a-shorter-shortcut-to-capture-todo-tasks/
;; function to capture a todo
(defun bjm/org-capture-todo ()
  (interactive)
  "Capture a TODO item"
  (org-capture nil "t"))

;; bind
(define-key global-map (kbd "C-0") 'bjm/org-capture-todo)


;;set priority range from A to C with default A
;; A 重要 紧急
;; B 重要 不紧急
;; C 不重要 紧急
;; D 不重要 不紧急
(setq org-highest-priority ?A)
(setq org-lowest-priority ?D)
(setq org-default-priority ?A)


;;set colours for priorities
(setq org-priority-faces '((?A . (:foreground "red" :weight bold))
                           (?B . (:foreground "blue"))
                           (?C . (:foreground "OliveDrab"))
                           (?D . (:foreground "DarkGrey"))
			   ))

;;open agenda in current window
(setq org-agenda-window-setup (quote current-window))


;; setup for refile from  http://doc.norang.ca/org-mode.html#GettingOrgModeWithGit
; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps nil)

; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))

; Use IDO for both buffer and file completion and ido-everywhere to t
(setq org-completion-use-ido t)
(setq ido-everywhere t)
(setq ido-max-directory-size 100000)
(ido-mode (quote both))
; Use the current window when visiting files and buffers with ido
(setq ido-default-file-method 'selected-window)
(setq ido-default-buffer-method 'selected-window)
; Use the current window for indirect buffer display
(setq org-indirect-buffer-display 'current-window)

;;;; Refile settings
; Exclude DONE state tasks from refile targets
(defun bh/verify-refile-target ()
  "Exclude todo keywords with a done state from refile targets"
  (not (member (nth 2 (org-heading-components)) org-done-keywords)))

(setq org-refile-target-verify-function 'bh/verify-refile-target)


(provide 'init-org-capture)

