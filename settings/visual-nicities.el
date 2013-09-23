;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Visual Nicities
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'color-theme)
(load-library "color-theme-victor")
(global-font-lock-mode 1)
(color-theme-initialize)
(color-theme-victor)
;Show column numbers
(column-number-mode 1)
(setq-default fill-column 72)
(setq auto-fill-mode 1)
;Show what's being selected
(transient-mark-mode 1)
;Show matching parentheses
(show-paren-mode 1)
;Line by line scrolling
(setq scroll-step 1)
(setq inhibit-startup-message t)
;Disable the menubar (promotes good emacs memory :)
(menu-bar-mode -1)
;Show newlines at end of file
;(define-fringe-bitmap 'empty-line [0 0 #x3c #x3c #x3c #x3c 0 0])
(set-default 'indicate-empty-lines nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Increase/Decrease font size on the fly
;;; Taken from: http://is.gd/iaAo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun increase-font-size ()
  (interactive)
  (set-face-attribute 'default
                      nil
                      :height
                      (ceiling (* 1.10
                                  (face-attribute 'default :height)))))
(defun decrease-font-size ()
  (interactive)
  (set-face-attribute 'default
                      nil
                      :height
                      (floor (* 0.9
                                  (face-attribute 'default :height)))))
(global-set-key (kbd "M-+") 'increase-font-size)
(global-set-key (kbd "M-_") 'decrease-font-size)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EOF
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
