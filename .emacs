(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-install 'multiple-cursors)
(package-install 'company)
(package-install 'smex)
(require 'multiple-cursors)
(require 'company)
(require 'smex)

(menu-bar-mode 0)
(column-number-mode 1)
(size-indication-mode 1)
(setq inhibit-startup-screen 0)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
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
   '(company dash rust-mode lua-mode gruber-darker-theme multiple-cursors))
 '(scroll-bar-mode 'right)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Iosevka" :foundry "UKWN" :slant normal :weight normal :height 150 :width normal)))))

(setq make-backup-files nil)
(setq compilation-scroll-output t)
(global-set-key (kbd "C-M-]") 'mc/mark-next-like-this)
(global-set-key (kbd "C-M-[") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c j") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-c J") 'mc/skip-to-previous-like-this)
(put 'upcase-region 'disabled nil)
(global-company-mode)
(global-set-key (kbd "M-x") 'smex)
