;; Melpa

(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

(require 'cl)
(defvar packages-list
  '(
    evil
    evil-search-highlight-persist
    yasnippet
    flycheck
    fiplr
    magit
    helm

    cider
    rainbow-delimiters
    smartparens

    auctex
    latex-preview-pane

    monokai-theme
    solarized-theme
    zenburn-theme

    web-mode

    ;; company
    ;; company-go
    go-mode

    jedi
    virtualenvwrapper
    )
  "List of packages needs to be installed at launch")

(defun has-package-not-installed ()
  (loop for p in packages-list
        when (not (package-installed-p p)) do (return t)
        finally (return nil)))

(when (has-package-not-installed)
  (package-refresh-contents)
  ;; Install the missing packages
  (dolist (p packages-list)
    (when (not (package-installed-p p))
      (package-install p))))


;; UI

;;(load-theme 'monokai t)
(load-theme 'solarized-light t)
;;(load-theme 'zenburn t)

(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 105
                    :weight 'normal
                    :width 'normal)

(global-hl-line-mode 1)
(column-number-mode 1)

(setq scroll-step 1
      ;;scroll-conservatively 10000
      ;;scroll-margin 5
      auto-window-vscroll nil
      )


;; General

(add-to-list 'exec-path "~/bin")

(setq tab-width 4)

(setq auto-save-default nil) ; stop creating #autosave# files


;; Plugins

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'better-defaults)

(require 'whitespace)
(setq-default whitespace-style '(face trailing lines empty indentation::space))
(setq-default whitespace-line-column 80)
(setq global-whitespace-mode 1)
(global-whitespace-mode 1)

(require 'evil)
(evil-mode 1)
(require 'evil-search-highlight-persist)
(global-evil-search-highlight-persist t)

(require 'yasnippet)
(yas-global-mode 1)

;; (require 'company)
;; (add-hook 'after-init-hook 'global-company-mode)

(require 'helm-config)
(helm-mode 1)

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(smartparens-global-mode t)
(require 'smartparens-config)

;; Python

(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(venv-initialize-eshell)
(setq venv-location "~/dev/python/envs")

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)

;; Go

;; (require 'company-go)
(add-hook 'before-save-hook #'gofmt-before-save)

;; Latex

(latex-preview-pane-enable)

;; Clojure

(add-hook 'cider-repl-mode-hook #'smartparens-strict-mode)
(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; Web

(require 'web-mode)
(add-to-list 'auto-mode-alist '("/\\(views\\|html\\|templates\\)/.*" . web-mode))
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-current-element-highlight t)

(add-to-list 'auto-mode-alist
             '("\\.psql$" . (lambda ()
                              (sql-mode)
                              (sql-highlight-postgres-keywords))))

;; Shortcuts

(global-set-key (kbd "C-x C-g") 'magit-status)
(global-set-key (kbd "C-x C-b") 'buffer-menu)

(setq fiplr-ignored-globs '((directories (".git" ".svn" "__pycache__"))
                            (files ("*.pyc"))))
(global-set-key (kbd "C-x f") 'fiplr-find-file)
