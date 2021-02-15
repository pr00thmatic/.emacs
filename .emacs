(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(abyss))
 '(custom-safe-themes
   '("d8dc153c58354d612b2576fea87fe676a3a5d43bcc71170c62ddde4a1ad9e1fb" "e7b49145d311e86da34a32a7e1f73497fa365110a813d2ecd8105eaa551969da" "c70799e6420521bdd782842cd38ed9d18ba221ca294098f786e2c4ca4b2e9521" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "aaa4c36ce00e572784d424554dcc9641c82d1155370770e231e10c649b59a074" "0b0d189e2393d17e30d5101ba53f6798712a415b26de4f164b3fc878f54a5521" "3325e2c49c8cc81a8cc94b0d57f1975e6562858db5de840b03338529c64f58d1" "e3c64e88fec56f86b49dcdc5a831e96782baf14b09397d4057156b17062a8848" "54cf3f8314ce89c4d7e20ae52f7ff0739efb458f4326a2ca075bf34bc0b4f499" "01cf34eca93938925143f402c2e6141f03abb341f27d1c2dba3d50af9357ce70" "0685ffa6c9f1324721659a9cd5a8931f4bb64efae9ce43a3dba3801e9412b4d8" "fd22c8c803f2dac71db953b93df6560b6b058cb931ac12f688def67f08c10640" "3df5335c36b40e417fec0392532c1b82b79114a05d5ade62cfe3de63a59bc5c6" "ca70827910547eb99368db50ac94556bbd194b7e8311cfbdbdcad8da65e803be" "d5a878172795c45441efcd84b20a14f553e7e96366a163f742b95d65a3f55d71" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "4f01c1df1d203787560a67c1b295423174fd49934deb5e6789abd1e61dba9552" "0fe24de6d37ea5a7724c56f0bb01efcbb3fe999a6e461ec1392f3c3b105cc5ac" "0a41da554c41c9169bdaba5745468608706c9046231bbbc0d155af1a12f32271" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "8a379e7ac3a57e64de672dd744d4730b3bdb88ae328e8106f95cd81cbd44e0b6" "2035a16494e06636134de6d572ec47c30e26c3447eafeb6d3a9e8aee73732396" "d0aa1464d7e55d18ca1e0381627fac40229b9a24bca2a3c1db8446482ce8185e" "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "6b80b5b0762a814c62ce858e9d72745a05dd5fc66f821a1c5023b4f2a76bc910" "6c3b5f4391572c4176908bb30eddc1718344b8eaff50e162e36f271f6de015ca" "fce3524887a0994f8b9b047aef9cc4cc017c5a93a5fb1f84d300391fba313743" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "cede98f6e2fc4d51f6a32dfdeb8052b03ef82abd02fe94c7ce5c4f16e21841d2" "97889f9d3d5208eb6264a222e887878058d9d527d272640e4017cf308d3e53ee" "387b487737860e18cbb92d83a42616a67c1edfd0664d521940e7fbf049c315ae" "459f1c47332d025f2523fc76bf6f5f5e9e0c78ac393dc683cab681137493ea62" "ce577f2b30c4d413186f8dd4d8148e32979fa50910ec2fe65c1eafdcb9973040" "5111a41453244802afd93eed1a434e612a8afbdf19c52384dffab129258bab6e" "20bf9f519f78b247da9ccf974c31d3537bee613ff11579f539b2781246dee73b" default))
 '(package-selected-packages
   '(treeview tron-legacy-theme sweet-theme ewal-doom-themes brutal-theme ayu-theme acme-theme telega weyland-yutani-theme warm-night-theme typescript-mode csharp-mode lua-mode yasnippet web-mode sql-indent neotree js3-mode js-doc flymake-jshint dirtree camcorder bongo birds-of-paradise-plus-theme base16-theme auto-complete apropospriate-theme ample-zen-theme ahungry-theme abc-mode))
 '(red "#ffffff")
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "outline" :slant normal :weight normal :height 98 :width normal))))
 '(c-annotation-face ((t (:inherit font-lock-constant-face :foreground "#f5f"))))
 '(region ((t (:background "#031")))))

;; (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
;; (add-hook 'after-init-hook (lambda () ((load-theme 'base16-shapeshifter-dark))))
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; wtf?!
(global-set-key (kbd "M-;") 'beginning-of-buffer)
(global-set-key (kbd "M-:") 'end-of-buffer)
(global-set-key (kbd "M--") 'dabbrev-expand)

;; whitespace inquisition
(global-set-key "\C-\M-z" 'whitespace-cleanup)

;; js indent at 2
(setq js-indent-level 2)
;; c# indent at 2
(setq c-basic-offset 2)

;; wind moves
(windmove-default-keybindings)

;; shut up emacs!
(setq ring-bell-function 'ignore)

;; transparent emacs
(set-frame-parameter (selected-frame) 'alpha '(90 90))
(set-face-attribute 'default nil :background "#000000"
                    :foreground "white")

;; full screen
(toggle-frame-fullscreen)

;; coding goods
(show-paren-mode 1)

(setq package-enable-at-startup nil
      package-archives '(("org" . "https://orgmode.org/elpa/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")
                         ;; ("elpy" . "https://jorgenschaefer.github.io/packages/")
                         ;; ("marmalade" . "http://marmalade-repo.org/packages/") ;
                         ))
;; ;; ;; melpa
;; (require 'package) ;; You might already have this line
;; (add-to-list 'package-archives
;;              '("melpa" . "https://melpa.org/packages/"))
;; (when (< emacs-major-version 24)
;;   ;; For important compatibility libraries like cl-lib
;;   (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
;; (setq package-archives '(("melpa" . "https://melpa.org/packages/")))
;; (package-initialize) ;; You might already have this line

;; emacs o.O

;; ****** YASNIPPET ******
;; yasnippet popup menu
;;; use popup menu for yas-choose-value
(require 'popup)
;; (require 'nlinum-hl)
(global-linum-mode)

;; add some shotcuts in popup menu mode
(define-key popup-menu-keymap (kbd "M-n") 'popup-next)
(define-key popup-menu-keymap (kbd "TAB") 'popup-next)
(define-key popup-menu-keymap (kbd "<tab>") 'popup-next)
(define-key popup-menu-keymap (kbd "<backtab>") 'popup-previous)
(define-key popup-menu-keymap (kbd "M-p") 'popup-previous)

(defun yas-popup-isearch-prompt (prompt choices &optional display-fn)
  (when (featurep 'popup)
    (popup-menu*
     (mapcar
      (lambda (choice)
        (popup-make-item
         (or (and display-fn (funcall display-fn choice))
             choice)
         :value choice))
      choices)
     :prompt prompt
     ;; start isearch mode immediately
     :isearch t
     )))

(setq yas-prompt-functions '(yas-popup-isearch-prompt yas-ido-prompt yas-no-prompt))

;; yasnippet on load
(yas-global-mode 1)
(add-hook 'term-mode-hook (lambda ()
                            (yas-minor-mode -1)))


;; 73 ^


;; masm
(require 'asm-mode)
(add-hook 'asm-mode-hook (lambda ()
                           (setq indent-tabs-mode nil) ; use spaces to indent
                           (electric-indent-mode -1) ; indentation in asm-mode is annoying
                           (setq tab-stop-list (number-sequence 2 60 2))))


(define-key asm-mode-map (kbd "<ret>") 'newline-and-indent)
(define-key asm-mode-map (kbd "M-.") 'helm-etags-select)


;; firebot mode
(defun lets-firebot ()
  (interactive)
  (make-variable-buffer-local 'c-basic-offset)
  (set-variable 'c-basic-offset 4))

;; copy from pdf
(defun purge-pdf ()
  (interactive)
  (progn
    (goto-char 1)
    ;; párrafos a salto auxiliar
    (while (search-forward-regexp "\\([.\)]\\)\\($\\)\\([^\-]\\)" nil t)
      (goto-char (match-end 0))
      (insert "ZOMGZALIENZ"))
    ;; saltos dentro del párrafo
    (goto-char 1)
    (while (search-forward-regexp "\\($\\)\\([^$]\\)" nil t)
      (replace-match " "))
    ;; salto auxiliar a doble salto
    (goto-char 1)
    (while (search-forward "ZOMGZALIENZ" nil t) (replace-match "\n\n"))
    ;; vocales y eñes
    (goto-char 1)
    (while (search-forward-regexp " ́\\(\s\\)?a" nil t) (replace-match "á"))
    (goto-char 1)
    (while (search-forward-regexp " ́\\(\s\\)?e" nil t) (replace-match "é"))
    (goto-char 1)
    (while (search-forward-regexp " ́\\(\s\\)?ı" nil t) (replace-match "í"))
    (goto-char 1)
    (while (search-forward-regexp " ́\\(\s\\)?o" nil t) (replace-match "ó"))
    (goto-char 1)
    (while (search-forward-regexp " ́\\(\s\\)?u" nil t) (replace-match "ú"))
    (goto-char 1)
    (while (search-forward-regexp " ̃\\(\s\\)?n" nil t) (replace-match "ñ"))
    ;; comillas feas, a comillas latex
    (goto-char 1)
    (while (search-forward "“" nil t) (replace-mat
                                       ch "``"))
    (goto-char 1)
    (while (search-forward "”" nil t) (replace-match "''"))
    ))

(defun lazy-spanglish ()
  (interactive)
  (while (search-forward "'a" nil t) (replace-match "á"))
  (goto-char 1)
  (while (search-forward "'e" nil t) (replace-match "é"))
  (goto-char 1)
  (while (search-forward "'i" nil t) (replace-match "í"))
  (goto-char 1)
  (while (search-forward "'o" nil t) (replace-match "ó"))
  (goto-char 1)
  (while (search-forward "'u" nil t) (replace-match "ú"))
  (goto-char 1)
  (while (search-forward "~n" nil t) (replace-match "ñ"))
  )


(setq-default indent-tabs-mode nil)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.shader\\'" . shader-mode))
(add-to-list 'auto-mode-alist '("\\.script\\'" . lua-mode))


(defun my-web-mode-hook ()
  (setq web-mode-markup-indent-offset 2))

(add-hook 'web-mode-hook 'my-web-mode-hook)

;; js doc
(require 'js-doc)
(add-hook 'js-mode-hook
          #'(lambda ()
              (define-key js2-mode-map "\C-ci" 'js-doc-insert-function-doc)
              (define-key js2-mode-map "@" 'js-doc-insert-tag)))


;; shader mode
(add-to-list 'load-path "C:/Users/VG/.emacs.d/shader-mode.el")

;; tern :O
;; (add-to-list 'load-path "/home/vg/.emacs.d/tern/tern/emacs/")
;; (autoload 'tern-mode "tern.el" nil t)
;; (add-hook 'js-mode-hook (lambda () (tern-mode t)))
;; (eval-after-load 'tern
;;   '(progn
;;      (require 'tern-auto-complete)
;;      (tern-ac-setup)))
;; autocomplete
(global-auto-complete-mode t)
(put 'erase-buffer 'disabled nil)

(prefer-coding-system 'utf-8)

;; don't go away,
;; and leave me there,
;; wondering what my mistake was,
;; wondering if you'll ever remember,
;; anything i said to you on the past.
(global-unset-key "\C-z")


(add-hook 'artist-mode-hook
          (lambda ()
            (local-set-key (kbd "<f1>") 'org-mode)
            (local-set-key (kbd "<f2>") 'artist-select-op-pen-line) ; f2 = pen mode
            (local-set-key (kbd "<f3>") 'artist-select-op-line)     ; f3 = line
            (local-set-key (kbd "<f4>") 'artist-select-op-square)   ; f4 = rectangle
            (local-set-key (kbd "<f5>") 'artist-select-op-ellipse)  ; f5 = ellipse
            (local-set-key (kbd "C-z") 'undo)
            ))

;; ;; squared font for artist mode
;; (add-hook 'artist-mode-hook (lambda ()
;;                               (setq buffer-face-mode-face '(:family "Topaz-8"))
;;                               (buffer-face-mode)))


(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))

(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

;; (require 'smooth-scrolling)
;; (smooth-scrolling-mode 1)
;; (setq smooth-scroll-margin 5)

(setq lua-child-indent 3)

(setq backup-directory-alist
      `((".*" . "~/.emacs-saves/")))
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs-saves/" t)))

(global-set-key (kbd "M-q") 'kill-ring-save)
(global-set-key (kbd "C-q") 'kill-region)

;; (load-theme 'abyss)

(defun completion-f-n-table-ignoring-dot-suffix (fun str pred flag)
  "Call `completion-file-name-table' with a predicate that
ignores matches starting with a dot, unless STR starts with a
dot."
  (funcall fun str
           (cond ((string-suffix-p ".meta" (file-name-nondirectory str))
                  pred)
                 ((not pred)
                  (lambda (str)
                    (not (string-suffix-p ".meta" str))))
                 (t
                  (lambda (str)
                    (and (not (string-suffix-p ".meta" str))
                         (funcall pred str)))))
           flag))

(advice-add 'completion-file-name-table :around
            'completion-f-n-table-ignoring-dot-suffix)
(set-face-attribute 'region nil :background "#af0")
(set-face-attribute 'region nil :foreground "#000")
(put 'upcase-region 'disabled nil)
