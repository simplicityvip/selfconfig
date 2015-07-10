(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror) 
	(url-retrieve
	 "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
	 (lambda (s)
	 	 (end-of-buffer)
		 (eval-print-last-sexp)
 		 )
	)
)

;; mark
(define-key global-map [C-return] 'set-mark-command)

;; just y n
(fset 'yes-or-no-p 'y-or-n-p)

;; auto new line
(setq require-final-newline t)
(setq track-eol t)

;; no backup file
(setq-default make-backup-files nil)

;;
(show-paren-mode 1)

;; "C-x o"
(global-set-key [(f4)] 'other-window)
;; "f1" help
;; (global-set-key [(f1)] 'save-buffer)
;; "f2" save
(global-set-key [(f2)] 'save-buffer)
;; "f8"
(defun open-eshell-other-buffer()
  "open eshell in other buffer"
  (interactive)
  (split-window-vertically)
  (eshell))

(global-set-key [(f12)] 'eshell)
(global-set-key [(f11)] 'open-eshell-other-buffer)
;; undo
(global-set-key [(f8)] 'undo)
;; "C-left"
(global-set-key [(f5)] 'previous-buffer)
;; "C-right"
(global-set-key [(f6)] 'next-buffer)
;; "C-," left
(global-set-key (kbd "C-,") 'scroll-left)
;; "C-." right
(global-set-key (kbd "C-.") 'scroll-right)

;; utf-8
(setq current-language-environment "UTF-8")
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
