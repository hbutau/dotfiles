(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(require 'evil)
(global-linum-mode t)
(evil-mode t)
(require 'anaconda-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("986915f2caa2c8f9538f0b77832adc8abf3357681d4de5ee93a202ebf19bd8b8" "189c34d25b306235f4a0f281c9d17a85097bf155dcbf1f6809dec9b7f168a2b7" default)))
 '(font-use-system-font t)
 '(inhibit-startup-screen t)
 '(linum-mode t t)
 '(py-auto-complete-p t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 151 :width normal)))))
 
 
 (autoload 'pylint "pylint")
  (add-hook 'python-mode-hook 'pylint-add-menu-items)
  (add-hook 'python-mode-hook 'pylint-add-key-bindings)
  
  (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
(put 'downcase-region 'disabled nil)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t) 

