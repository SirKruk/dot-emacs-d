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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   [("#0d0d0d" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#c9b4cf" "#8abeb7" "#ffffff")])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "938d8c186c4cb9ec4a8d8bc159285e0d0f07bad46edf20aa469a89d0d2a586ea" "6de7c03d614033c0403657409313d5f01202361e35490a3404e33e46663c2596" "ed317c0a3387be628a48c4bbdb316b4fa645a414838149069210b66dd521733f" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "6f11ad991da959fa8de046f7f8271b22d3a97ee7b6eca62c81d5a917790a45d9" "611e38c2deae6dcda8c5ac9dd903a356c5de5b62477469133c89b2785eb7a14d" "a6e5edd129bc48c9540ab6ed4a76a2e4e0da6359e981a3ec0bffbeb4416d4cc9" "b81bfd85aed18e4341dbf4d461ed42d75ec78820a60ce86730fc17fc949389b2" "365d9553de0e0d658af60cff7b8f891ca185a2d7ba3fc6d29aadba69f5194c7f" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(fci-rule-color "#5c5e5e")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-sexp-background-color "#1c1f26")
 '(inhibit-startup-screen t)
 '(jdee-db-active-breakpoint-face-colors (cons "#0d0d0d" "#41728e"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#0d0d0d" "#b5bd68"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#0d0d0d" "#5a5b5a"))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-ellipsis "  ")
 '(org-fontify-done-headline t)
 '(org-fontify-quote-and-verse-blocks t)
 '(org-fontify-whole-heading-line t)
 '(package-selected-packages (quote (package-build shut-up epl git commander f dash s)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(quack-default-program "racket")
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(split-width-threshold 1)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background "#0d0d0d")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (list
    (cons 20 "#b5bd68")
    (cons 40 "#c8c06c")
    (cons 60 "#dcc370")
    (cons 80 "#f0c674")
    (cons 100 "#eab56d")
    (cons 120 "#e3a366")
    (cons 140 "#de935f")
    (cons 160 "#d79e84")
    (cons 180 "#d0a9a9")
    (cons 200 "#c9b4cf")
    (cons 220 "#ca9aac")
    (cons 240 "#cb8089")
    (cons 260 "#cc6666")
    (cons 280 "#af6363")
    (cons 300 "#936060")
    (cons 320 "#765d5d")
    (cons 340 "#5c5e5e")
    (cons 360 "#5c5e5e")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))

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
;(load-theme 'doom-one t)
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

;(global-set-key (kbd "C-\.") 'other-window)
(global-set-key (kbd "C-,") (lambda () (interactive) (other-window -1)))
(global-set-key (kbd "M-[") 'previous-buffer)
(global-set-key (kbd "M-]") 'next-buffer)
(setq next-line-add-newlines t)
