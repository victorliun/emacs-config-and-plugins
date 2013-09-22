;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; This file managers the basic settings in my emacs, like highlight,
;; keyboard and other basic emacs settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Display time and date
(setq display-time-day-and-date t
      display-time-24hr-format t)
(display-time)

;; Highlight current line 
(global-hl-line-mode 1)
(set-face-background 'hl-line "grey20")

;; Highlight selected region
(transient-mark-mode t)
(custom-set-faces
 '(region ((t (:inherit nil :background "RoyalBlue4")))))

;; No backup files
(setq make-backup-files nil)

;; Kill the whole line
(setq-default kill-whole-line t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End of this file 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
