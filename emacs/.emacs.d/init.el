(add-to-list 'load-path
         "/disk10/liyong.zly/.emacs.d/site-lisp/ecb-alexott/")
(require 'ecb)
(setq stack-trace-on-error nil)
(setq ecb-auto-activate t)
(setq ecb-tip-of-the-day nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-to-list 'load-path
             "/disk10/liyong.zly/.emacs.d/site-lisp/plugins/")
(require 'session)
  (add-hook 'after-init-hook 'session-initialize)
(load "desktop") 
(desktop-load-default) 
(desktop-read)

(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key "%" 'match-paren)
          
(defun match-paren (arg)
"Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

(setq cscope-do-not-update-database t)
(load-file "/disk10/liyong.zly/.emacs.d/site-lisp/plugins/xcscope.el")
(require 'xcscope)
;(require 'gtags)
;shortcut key for global
(global-set-key (kbd "C-c g f") 'gtags-find-tag)  
(global-set-key (kbd "C-c g p") 'gtags-pop-stack)  
(global-set-key (kbd "C-c g s") 'gtags-select-tag)  

(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)
;;;; .....ecb..
(global-set-key (kbd "C-c <f1>") 'ecb-hide-ecb-windows)
(global-set-key (kbd "C-c <f2>") 'ecb-show-ecb-windows)
;
;;;;; ...ecb.....
(global-set-key (kbd "C-<c1>") 'ecb-maximize-window-directories)
(global-set-key (kbd "C-<c2>") 'ecb-maximize-window-sources)
(global-set-key (kbd "C-<c3>") 'ecb-maximize-window-methods)
(global-set-key (kbd "C-<c4>") 'ecb-maximize-window-history)
;;;;; ........
(global-set-key (kbd "C-<c5>") 'ecb-restore-default-window-sizes)
(global-set-key (kbd "C-<f3>")  'cscope-set-initial-directory)
(global-set-key (kbd "C-<f4>")  'cscope-unset-initial-directory)
(global-set-key (kbd "C-<f5>")  'cscope-find-this-symbol)
(global-set-key (kbd "C-<f6>")  'cscope-find-global-definition)
(global-set-key (kbd "C-<f7>")  'cscope-find-global-definition-no-prompting)
(global-set-key (kbd "C-<f8>")  'cscope-pop-mark)
(global-set-key (kbd "C-<f9>")  'cscope-next-symbol)
(global-set-key (kbd "C-<f10") 'cscope-next-file)
(global-set-key (kbd "C-<f11") 'cscope-prev-symbol)
(global-set-key (kbd "C-<f12") 'cscope-prev-file)
(global-set-key (kbd "meta f9")     'cscope-display-buffer)
(global-set-key (kbd "meta f10")    'cscope-display-buffer-toggle)
