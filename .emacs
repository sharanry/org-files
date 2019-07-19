;; Add the melpa package repository
;; Remember to always use HTTPS
;;
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

;; Initialize packages
;;
(package-initialize)

;; Remove the splash screen
;; 
(setq inhibit-splash-screen t)

;; Remove the menu bar
;;
;;(customize-set-variable 'menu-bar-mode nil)

;; Remove the tool bar
;;
(customize-set-variable 'tool-bar-mode nil)

;; Remove the scroll bar
;;
(customize-set-variable 'scroll-bar-mode nil)

;; Load the zeburn theme
;;
(load-theme 'zenburn t)


;; Use Menlo as default font
(set-default-font "Menlo 10")

(guru-global-mode +1)

;; emacs for python, enabling all features
;;(load-file "/home/syalburg/.emacs.d/emacs-for-python/epy-init.el")
;; Setup ipython
;;(epy-setup-ipython)
;;(setq-default py-shell-name "/home/syalburg/anaconda3/bin/ipython")
;;line highlighting
(global-hl-line-mode t) ;; To enable
(set-face-background 'hl-line "black") ;; change with the color that you like
                                       ;; for a list of colors: http://raebear.net/comp/emacscolors.html
;; indentation highlight
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ein anaconda-mode zenburn-theme yasnippet which-key undo-tree spinner rich-minority rainbow-mode queue org-ac multiple-cursors json-mode js2-mode ivy hydra guru-mode easy-kill diff-hl dash company beacon auctex async ace-window)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setenv "WORKON_HOME" "/home/syalburg/anaconda3/envs")
(pyvenv-mode 1)
