(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-install 'gruber-darker-theme)
(package-install 'multiple-cursors)
(package-install 'company)
(package-install 'smex)

(require 'multiple-cursors)
(require 'company)
(require 'smex)
(require 'move-text)

(menu-bar-mode 0)
(column-number-mode 1)
(size-indication-mode 1)
(setq-default inhibit-startup-screen 0
              indent-tabs-mode nil
              tab-width 4
              make-backup-files nil
              compilation-scroll-output t)
(defvaralias 'c-basic-offset 'tab-width)
(global-display-line-numbers-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("bddf21b7face8adffc42c32a8223c3cc83b5c1bbd4ce49a5743ce528ca4da2b6" "ba4ab079778624e2eadbdc5d9345e6ada531dc3febeb24d257e6d31d5ed02577" default))
 '(display-line-numbers-type 'relative)
 '(package-selected-packages
   '(smex company dash rust-mode lua-mode gruber-darker-theme multiple-cursors))
 '(scroll-bar-mode 'right)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Iosevka" :foundry "UKWN" :slant normal :weight normal :height 200 :width normal)))))

(defun set-font (newfont)
  (interactive "sFont: ")
  (eval
   `(custom-set-faces
     '(default ((t
                 (:family, newfont, :foundry "UKWN" :slant normal :weight normal :height 200 :width normal)
                 )))
     ))
  )

(global-set-key (kbd "C-M-]") 'mc/mark-next-like-this)
(global-set-key (kbd "C-M-[") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c j") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-c J") 'mc/skip-to-previous-like-this)
(put 'upcase-region 'disabled nil)
(global-company-mode)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-o") 'join-line)
(global-set-key (kbd "M-s") 'delete-trailing-whitespace)
(global-set-key (kbd "M-<up>") 'move-text-up)
(global-set-key (kbd "M-<down>") 'move-text-down)
(global-set-key (kbd "M-s") 'delete-trailing-whitespace)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(put 'scroll-left 'disabled nil)
(setq confirm-kill-emacs 'y-or-n-p)

(global-set-key (kbd "M-RET") 'magit)
