;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e"
     default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote (package-build shut-up epl git commander f dash s)))
 '(show-paren-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'cask "~/.cask/cask.el")
(cask-initialize)


(require 'fill-column-indicator)
(setq fci-rule-width 1)
(setq fci-rule-color "darkblue")
(dolist (hook '(text-mode-hook sml-mode-hook emacs-lisp-mode-hook ruby-mode-hook
                               enh-ruby-mode-hook))
  (add-hook hook 'turn-on-auto-fill))
(dolist (hook '(text-mode-hook sml-mode-hook emacs-lisp-mode-hook ruby-mode-hook
                               enh-ruby-mode-hook))
  (add-hook hook '(lambda() (set-fill-column 80))))


;; TODO: save actions?
;;(dolist (hook '(text-mode-hook sml-mode-hook emacs-lisp-mode-hook ruby-mode-hook
;;                               enh-ruby-mode-hook org-mode-hook))
;;  (add-hook hook 'whitespace-cleanup-mode))
(global-whitespace-cleanup-mode 1)
;; as per https://github.com/bbatsov/ruby-style-guide#two-or-more-empty-lines
(add-hook 'enh-ruby-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'delete-blank-lines)))


(require 'better-defaults)
(setq inhibit-splash-screen t
      initial-scratch-message nil)

(require 'pallet)
(pallet-mode t)

(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)
;; Display ido results vertically, rather than horizontally
(setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]"
                              " [No match]" " [Matched]" " [Not readable]"
                              " [Too big]" " [Confirm]")))
(defun ido-disable-line-truncation ()
  (set (make-local-variable 'truncate-lines) nil))
(add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)
(defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))
(add-hook 'ido-setup-hook 'ido-define-keys)


(require 'highlight-indentation)
(add-hook 'enh-ruby-mode-hook
           (lambda () (highlight-indentation-current-column-mode)))

(require 'projectile)
(require 'grizzl)
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
(dolist (hook '(ruby-mode-hook enh-ruby-mode-hook))
  (add-hook hook (lambda () (flyspell-mode-on))))

(require 'yasnippet)
(yas-global-mode 1)

(require 'flyspell)
(setq flyspell-issue-message-flg nil)
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode-on))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode-off))))
(dolist (hook '(ruby-mode-hook enh-ruby-mode-hook c-mode-hook))
  (add-hook hook (lambda () (flyspell-prog-mode))))

(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'smartparens-config)
(dolist (hook '(ruby-mode-hook enh-ruby-mode-hook c-mode-hook js-mode-hook
                               sml-mode-hook))
  (add-hook hook 'smartparens-mode))

(require 'yard-mode)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ruby-mode-hook 'yard-mode)
(add-hook 'ruby-mode-hook 'eldoc-mode)
(add-hook 'enh-ruby-mode-hook 'yard-mode)
(add-hook 'enh-ruby-mode-hook 'eldoc-mode)

(require 'inf-ruby)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'compilation-filter-hook 'inf-ruby-auto-enter)

(require 'ruby-tools)
(add-hook 'enh-ruby-mode-hook 'ruby-tools-mode)

;(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'enh-ruby-mode-hook 'robe-mode)
(eval-after-load 'company
  '(push 'company-robe company-backends))
;; usage:
;; M-x start-robe

(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))

(company-quickhelp-mode 1)

(require 'seeing-is-believing)
(setq seeing-is-believing-prefix "C-.")
(add-hook 'ruby-mode-hook 'seeing-is-believing)
(add-hook 'enh-ruby-mode-hook 'seeing-is-believing)



(set-frame-font "Anonymous Pro 18")

(set-face-background 'highlight-indentation-face "#e3e3d3")
(set-face-background 'highlight-indentation-current-column-face "#c3b3b3")

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "s-a") #'helm-projectile-ag)
(global-set-key (kbd "s-t") #'helm-projectile-find-file-dwim)

;; Press Command-p for fuzzy find in project
(global-set-key (kbd "s-p") 'projectile-find-file)
;; Press Command-b for fuzzy switch buffer
(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

(global-set-key (kbd "<C-tab>") 'company-yasnippet)


(add-to-list 'auto-mode-alist
             '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'"
               . enh-ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'"
               . enh-ruby-mode))


(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c < >") 'mc/mark-all-like-this)

(require 'visual-regexp-steroids)
(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)
;; if you use multiple-cursors, this is for you:
(define-key global-map (kbd "C-c m") 'vr/mc-mark)


(global-set-key "\C-cd" 'zeal-at-point)

(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)


;(add-hook 'after-init-hook 'sml/setup)
(sml/setup)

(require 'all-the-icons)
;; it is very important that you install the Resource Fonts included in this
;; package
;; M-x all-the-icons-install-fonts

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
;; classic(default) ascii arrow icons nerd
;; use icons for window system and arrow terminal
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

(require 'doom-themes)
;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled
;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-one t)
;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)
;; Enable custom neotree theme
(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!

;(require 'powerline)
;(powerline-default-theme)
;; git clone https://github.com/powerline/fonts.git
;; sh ./fonts/install.sh

;; ??
;;(eval-after-load 'enh-ruby-mode
;; '(remove-hook 'enh-ruby-mode-hook 'erm-define-faces))



(defun my-sml-mode-hook () "Local defaults for SML mode"
       (setq sml-indent-level 2)        ; conserve on horizontal space
       (setq words-include-escape t)    ; \ loses word break status
       (setq indent-tabs-mode nil))     ; never ever indent with tabs
(add-hook 'sml-mode-hook 'my-sml-mode-hook)

(defun my-inf-sml-mode-hook () "Local defaults for inferior SML mode"
       (add-hook 'comint-output-filter-functions 'comint-truncate-buffer)
       (setq      comint-scroll-show-maximum-output t)
       (setq      comint-input-autoexpand nil))
(add-hook 'inferior-sml-mode-hook 'my-inf-sml-mode-hook)

;; Cool programing language mode
(define-derived-mode my-cool-mode scala-mode
  "cool"
  "Cool programming language")
(add-to-list 'auto-mode-alist '("\\.cl\\'" . my-cool-mode))

;; Flex mode
(define-derived-mode my-flex-mode c-mode "Lex" "F/Lex")
(add-to-list 'auto-mode-alist '("\\.flex\\'" . my-flex-mode))

(setq flycheck-global-modes '(or (not my-cool-mode) (not my-flex-mode)))

(load "~/.emacs.d/defs-lisp.el")

(desktop-save-mode 1)

;;; scroll by `number-of-lines' without the cursor attached to the screen
(global-set-key [M-up] (lambda () (interactive) (let ((number-of-lines 1))
                                                     (scroll-down number-of-lines)
                                                     (forward-line (- number-of-lines)))))
(global-set-key [M-down] (lambda () (interactive) (let ((number-of-lines 1))
                                                    (scroll-up number-of-lines)
                                                    (forward-line number-of-lines))))

;;; scroll by `number-of-lines' with the cursor attached to the screen
(global-set-key [S-M-up] (lambda () (interactive) (let ((number-of-lines 1))
                                                       (scroll-down number-of-lines))))
(global-set-key [S-M-down] (lambda () (interactive) (let ((number-of-lines 1))
                                                      (scroll-up number-of-lines))))
;; racket
(setq geiser-active-implementations '(racket))
(setq geiser-repl-query-on-kill-p nil)
(require 'quack)
