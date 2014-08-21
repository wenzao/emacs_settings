(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(delete-selection-mode t)
 '(visible-bell t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'package)
(add-to-list 'package-archives
 '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize) ;; init elpa packages


(require 'exec-path-from-shell) ;; if not using the ELPA package
(exec-path-from-shell-initialize)

;; (require 'python-pylint)

(add-to-list 'load-path "~/.emacs.d/elpa/popup-20140815.629/")
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20140803.2118/")
(require 'auto-complete-config)
(ac-config-default)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20140803.2118/dict")


(add-hook 'after-init-hook #'global-flycheck-mode)


(add-to-list 'load-path "~/.emacs.d/elpa/ess-20140810.7/lisp/")
(load "ess-site")
