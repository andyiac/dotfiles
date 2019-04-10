;; org journal setting
(with-eval-after-load 'org-journal 
  (setq org-journal-dir "~/org/logbook/")
  (add-to-list 'org-agenda-files (expand-file-name "~/org/logbook/"))
  (setq org-journal-file-format "%Y-%m-%d.org")
  (setq org-journal-date-prefix "#+TITLE: Daily Notes "))

(provide 'init-org-journal)