;;; gruvbox-theme.el --- A retro-groove colour theme for Emacs

;; Copyright (c) 2013 Lee Machin
;; Copyright (c) 2013-2016 Greduan
;; Copyright (c) 2016-2017 Jason Milkins
;; Copyright (c) 2017-2018 Filipe Silva (ninrod)

;; Author: Filipe Silva <filipe.silva at gmail dot com> (current maintainer)
;;
;; Author-list: Lee Machin <ljmachin@gmail.com>,
;;              Greduan <me@greduan.com>
;;              jason Milkins <jasonm23@gmail.com>
;;
;; URL: http://github.com/Greduan/emacs-theme-gruvbox
;; Version: 1.12.0

;; Package-Requires: ((autothemer "0.2"))

;;; Commentary:

;; Using autothemer since 1.00

;; A port of the Gruvbox colorscheme for Vim, built on top of the new built-in
;; theme support in Emacs 24.
;;
;; This theme contains my own modifications and it's a bit opinionated
;; sometimes, deviating from the original because of it. I try to stay
;; true to the original as much as possible, however. I only make
;; changes where I would have made the changes on the original.
;;
;; Since there is no direct equivalent in syntax highlighting from Vim to Emacs
;; some stuff may look different, especially in stuff like JS2-mode, where it
;; adds stuff that Vim doesn't have, in terms of syntax.

;;; Credits:

;; Pavel Pertsev created the original theme for Vim, on which this port
;; is based.

;; Lee Machin created the first port of the original theme, which
;; Greduan developed further adding support for several major modes.
;;
;; Jason Milkins (ocodo) has maintained the theme since 2015 and is
;; working with the community to add further mode support and align
;; the project more closely with Vim Gruvbox.

;;; Code:
(eval-when-compile
  (require 'cl-lib))

(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(defcustom gruvbox-contrast 'medium
  "Contrast level for the theme background."
  :options '(soft medium hard))

(autothemer-deftheme
 gruvbox
 "A retro-groove colour theme"

 ((((class color) (min-colors #xFFFFFF))        ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))           ; col 2 Xterm/256

  (gruvbox-dark0_ultimate  "#111314" "#0F0F0F")
  (gruvbox-dark0_hard      "#1d2021" "#1c1c1c")
  (gruvbox-dark0           "#282828" "#262626")
  (gruvbox-dark0_soft      "#32302f" "#303030")
  (gruvbox-dark1           "#3c3836" "#3a3a3a")
  (gruvbox-dark2           "#504945" "#4e4e4e")
  (gruvbox-dark3           "#665c54" "#626262")
  (gruvbox-dark4           "#7c6f64" "#767676")

  (gruvbox-gray            "#928374" "#8a8a8a")

  (gruvbox-light0_hard     "#ffffc8" "#ffffd7")
  (gruvbox-light0          "#fdf4c1" "#ffffaf")
  (gruvbox-light0_soft     "#f4e8ba" "#ffffaf")
  (gruvbox-light1          "#ebdbb2" "#ffdfaf")
  (gruvbox-light2          "#d5c4a1" "#bcbcbc")
  (gruvbox-light3          "#bdae93" "#a8a8a8")
  (gruvbox-light4          "#a89984" "#949494")

  (gruvbox-bright_red      "#fb4933" "#d75f5f")
  (gruvbox-bright_green    "#b8bb26" "#afaf00")
  (gruvbox-bright_yellow   "#fabd2f" "#ffaf00")
  (gruvbox-bright_blue     "#83a598" "#87afaf")
  (gruvbox-bright_purple   "#d3869b" "#d787af")
  (gruvbox-bright_aqua     "#8ec07c" "#87af87")
  (gruvbox-bright_orange   "#fe8019" "#ff8700")

  (gruvbox-neutral_red     "#fb4934" "#d75f5f")
  (gruvbox-neutral_green   "#b8bb26" "#afaf00")
  (gruvbox-neutral_yellow  "#fabd2f" "#ffaf00")
  (gruvbox-neutral_blue    "#83a598" "#87afaf")
  (gruvbox-neutral_purple  "#d3869b" "#d787af")
  (gruvbox-neutral_aqua    "#8ec07c" "#87af87")
  (gruvbox-neutral_orange  "#fe8019" "#ff8700")

  (gruvbox-faded_red       "#9D0006" "#870000")
  (gruvbox-faded_green     "#79740E" "#878700")
  (gruvbox-faded_yellow    "#B57614" "#af8700")
  (gruvbox-faded_blue      "#076678" "#005f87")
  (gruvbox-faded_purple    "#8F3F71" "#875f87")
  (gruvbox-faded_aqua      "#427B58" "#5f8787")
  (gruvbox-faded_orange    "#AF3A03" "#af5f00")
  (gruvbox-faded_cyan      "#00A7AF" "#00afaf")

  (gruvbox-dark_red        "#421E1E" "#5f0000")
  (gruvbox-dark_green      "#232B0F" "#005f00")
  (gruvbox-dark_yellow     "#4D3B27" "#5f5f00")
  (gruvbox-dark_blue       "#2B3C44" "#00005f")
  (gruvbox-dark_purple     "#4E3D45" "#5f00af")
  (gruvbox-dark_aqua       "#36473A" "#005f5f")
  (gruvbox-dark_orange     "#613620" "#af5f00")
  (gruvbox-dark_cyan       "#205161" "#005f87")

  (gruvbox-muted_red       "#901A1E" "#870000")
  (gruvbox-muted_green     "#556C21" "#878700")
  (gruvbox-muted_yellow    "#A87933" "#af8700")
  (gruvbox-muted_blue      "#1B5C6B" "#005f87")
  (gruvbox-muted_purple    "#82526E" "#875f87")
  (gruvbox-muted_aqua      "#506E59" "#5f8787")
  (gruvbox-muted_orange    "#A24921" "#af5f00")
  (gruvbox-muted_cyan      "#18A7AF" "#00afaf")

  (gruvbox-mid_red         "#3F1B1B" "#5f0000")
  (gruvbox-mid_green       "#1F321C" "#005f00")
  (gruvbox-mid_yellow      "#4C3A25" "#5f5f00")
  (gruvbox-mid_blue        "#30434C" "#00005f")
  (gruvbox-mid_purple      "#4C3B43" "#5f00af")
  (gruvbox-mid_aqua        "#394C3D" "#005f5f")
  (gruvbox-mid_orange      "#603000" "#af5f00")
  (gruvbox-mid_cyan        "#005560" "#005f87")

  (gruvbox-corrupted-mid_cyan  "#005f87" "#005f87")
  (gruvbox-corrupted-mid_green "#005f00" "#1F321C")

  (gruvbox-delimiter-one   "#458588" "#008787")
  (gruvbox-delimiter-two   "#b16286" "#d75f87")
  (gruvbox-delimiter-three "#8ec07c" "#87af87")
  (gruvbox-delimiter-four  "#d65d0e" "#d75f00")
  (gruvbox-white           "#FFFFFF" "#FFFFFF")
  (gruvbox-black           "#000000" "#000000")
  (gruvbox-sienna          "#DD6F48" "#d7875f")
  (gruvbox-darkslategray4  "#528B8B" "#5f8787")
  (gruvbox-lightblue4      "#66999D" "#5fafaf")
  (gruvbox-burlywood4      "#BBAA97" "#afaf87")
  (gruvbox-aquamarine4     "#83A598" "#87af87")
  (gruvbox-turquoise4      "#61ACBB" "#5fafaf")

  (gruvbox-zerodark-orange-light "#d7af87" "#ddbd78")
  (gruvbox-zerodark-red          "#ff5f5f" "#ff6c6b")
  (gruvbox-zerodark-bluedark     "#1f5582" "#005f87")
  (gruvbox-zerodark-spring-green "#00cd66" "green")
  (gruvbox-zerodark-cyan         "#28def0" "#00ffff")

  ;; spacemacs colors for ediff
  (red           "#f2241f" "#d70000")
  (aqua          "#2d9574" "#2aa198")
  (green         "#67b11d" "#67b11d")
  (blue          "#4f97d7" "#268bd2")
  (red-bg-s      "#512e31" "#262626")
  (aqua-bg       "#293235" "#262626")
  (green-bg-s    "#29422d" "#262626")
  (blue-bg       "#293239" "#262626")
  (bg3           "#100a14" "#121212")
  (bg4           "#0a0814" "#080808")

  (gruvbox-spacemacs-func        "#bc6ec5" "#d75fd7") ;func
  (gruvbox-spacemacs-mat         "#86dc2f" "#86dc2f") ;suc
  (gruvbox-spacemacs-keyword     "#4f97d7" "#268bd2") ;keyword
  (gruvbox-spacemacs-head2       "#2d9574" "#2aa198") ;str
  (gruvbox-spacemacs-comp        "#d75fd7" "#c56ec3")
  (gruvbox-spacemacs-comment     "#2aa1ae" "#008787")
  (gruvbox-corrupted-dark_purple "#6f44bf" "#4E3D45")

  (gruvbox-bg (cl-case gruvbox-contrast
                (hard gruvbox-dark0_hard)
                (soft gruvbox-dark0_soft)
                ;; Medium by default.
                (t    gruvbox-dark0))))

 ;; UI
 ((default                                   (:background gruvbox-bg :foreground gruvbox-light0))
  (cursor                                    (:background gruvbox-light0))
  (mode-line                                 (:background gruvbox-dark0 :foreground gruvbox-light2 :box nil))
  (mode-line-inactive                        (:background gruvbox-dark1 :foreground gruvbox-light4 :box nil))
  (fringe                                    (:background gruvbox-bg))
  (linum                                     (:background gruvbox-bg :foreground gruvbox-dark4))
  (hl-line                                   (:background gruvbox-dark1))
  (region                                    (:background gruvbox-dark2)) ;;selection
  (secondary-selection                       (:background gruvbox-dark1))
  (minibuffer-prompt                         (:background gruvbox-bg :foreground gruvbox-neutral_green :bold t))
  (vertical-border                           (:foreground gruvbox-dark2))
  (link                                      (:foreground gruvbox-faded_blue :underline t))
  (shadow                                    (:foreground gruvbox-dark4))

  ;; Built-in syntax
  (font-lock-builtin-face                            (:foreground gruvbox-neutral_orange))
  (font-lock-constant-face                           (:foreground gruvbox-neutral_purple))
  (font-lock-comment-face                            (:foreground gruvbox-dark4 :slant 'italic))
  (font-lock-function-name-face                      (:foreground gruvbox-faded_aqua))
  (font-lock-keyword-face                            (:foreground gruvbox-neutral_red))
  (font-lock-string-face                             (:foreground gruvbox-neutral_green))
  (font-lock-variable-name-face                      (:foreground gruvbox-neutral_blue))
  (font-lock-type-face                               (:foreground gruvbox-neutral_purple))
  (font-lock-warning-face                            (:foreground gruvbox-neutral_red :background gruvbox-dark_red :bold t))

  
  ;; MODE SUPPORT: highlight-numbers.el
  (highlight-numbers-number                  (:foreground gruvbox-spacemacs-comp))

  ;; whitespace-mode
  (whitespace-space                          (:background gruvbox-bg :foreground gruvbox-dark4))
  (whitespace-hspace                         (:background gruvbox-bg :foreground gruvbox-dark4))
  (whitespace-tab                            (:background gruvbox-bg :foreground gruvbox-dark4))
  (whitespace-newline                        (:background gruvbox-bg :foreground gruvbox-dark4))
  (whitespace-trailing                       (:background gruvbox-dark1 :foreground gruvbox-neutral_red))
  (whitespace-line                           (:background gruvbox-dark1 :foreground gruvbox-neutral_red))
  (whitespace-space-before-tab               (:background gruvbox-bg :foreground gruvbox-dark4))
  (whitespace-indentation                    (:background gruvbox-bg :foreground gruvbox-dark4))
  (whitespace-empty                          (:background nil :foreground nil))
  (whitespace-space-after-tab                (:background gruvbox-bg :foreground gruvbox-dark4))

  ;; RainbowDelimiters
  (rainbow-delimiters-depth-1-face           (:foreground gruvbox-delimiter-one))
  (rainbow-delimiters-depth-2-face           (:foreground gruvbox-delimiter-two))
  (rainbow-delimiters-depth-3-face           (:foreground gruvbox-delimiter-three))
  (rainbow-delimiters-depth-4-face           (:foreground gruvbox-delimiter-four))
  (rainbow-delimiters-depth-5-face           (:foreground gruvbox-delimiter-one))
  (rainbow-delimiters-depth-6-face           (:foreground gruvbox-delimiter-two))
  (rainbow-delimiters-depth-7-face           (:foreground gruvbox-delimiter-three))
  (rainbow-delimiters-depth-8-face           (:foreground gruvbox-delimiter-four))
  (rainbow-delimiters-depth-9-face           (:foreground gruvbox-delimiter-one))
  (rainbow-delimiters-depth-10-face          (:foreground gruvbox-delimiter-two))
  (rainbow-delimiters-depth-11-face          (:foreground gruvbox-delimiter-three))
  (rainbow-delimiters-depth-12-face          (:foreground gruvbox-delimiter-four))
  (rainbow-delimiters-unmatched-face         (:background nil :foreground gruvbox-light0))

  ;; linum-relative
  (linum-relative-current-face               (:background gruvbox-dark1 :foreground gruvbox-light4))

  ;; Highlight indentation mode
  (highlight-indentation-current-column-face (:background gruvbox-dark2))
  (highlight-indentation-face                (:background gruvbox-dark1))

  ;; Smartparens
  (sp-pair-overlay-face                      (:background gruvbox-dark2))
  (sp-show-pair-match-face                   (:foreground gruvbox-spacemacs-mat :inherit 'bold :underline t))
  (sp-show-pair-mismatch-face                (:background gruvbox-neutral_red)) ;; Highlight for bracket without pair
  (sp-wrap-overlay-face                      (:inherit 'sp-wrap-overlay-face))
  (sp-wrap-tag-overlay-face                (:inherit 'sp-wrap-overlay-face))

  ;; elscreen
  (elscreen-tab-background-face              (:background gruvbox-bg :box nil)) ;; Tab bar, not the tabs
  (elscreen-tab-control-face                 (:background gruvbox-dark2 :foreground gruvbox-neutral_red :underline nil :box nil)) ;; The controls
  (elscreen-tab-current-screen-face          (:background gruvbox-dark4 :foreground gruvbox-dark0 :box nil)) ;; Current tab
  (elscreen-tab-other-screen-face            (:background gruvbox-dark2 :foreground gruvbox-light4 :underline nil :box nil)) ;; Inactive tab

  ;; ag (The Silver Searcher)
  (ag-hit-face                               (:foreground gruvbox-neutral_blue))
  (ag-match-face                             (:foreground gruvbox-neutral_red))

  ;; Diffs
  (diff-changed                              (:background nil :foreground gruvbox-light1))
  (diff-added                                (:background nil :foreground gruvbox-neutral_green))
  (diff-removed                              (:background nil :foreground gruvbox-neutral_red))
  (diff-refine-added                         (:foreground gruvbox-bright_green :background gruvbox-muted_green))
  (diff-refine-removed                       (:foreground gruvbox-bright_red :background gruvbox-muted_red))
  (diff-indicator-changed                    (:inherit 'diff-changed))
  (diff-indicator-added                      (:inherit 'diff-added))
  (diff-indicator-removed                    (:inherit 'diff-removed))

  ;; js2-mode
  (js2-warning                               (:underline (:color gruvbox-bright_yellow :style 'wave)))
  (js2-error                                 (:underline (:color gruvbox-bright_red :style 'wave)))
  (js2-external-variable                     (:foreground gruvbox-spacemacs-comment))
  (js2-object-property                       (:foreground gruvbox-muted_purple))
  (js2-jsdoc-tag                             (:background nil :foreground gruvbox-gray  ))
  (js2-jsdoc-type                            (:background nil :foreground gruvbox-light4))
  (js2-jsdoc-value                           (:background nil :foreground gruvbox-light3))
  (js2-function-param                        (:background nil :foreground gruvbox-bright_aqua))
  (js2-function-call                         (:background nil :foreground gruvbox-bright_blue))
  (js2-instance-member                       (:background nil :foreground gruvbox-bright_orange))
  (js2-private-member                        (:background nil :foreground gruvbox-faded_yellow))
  (js2-private-function-call                 (:background nil :foreground gruvbox-faded_aqua))
  (js2-jsdoc-html-tag-name                   (:background nil :foreground gruvbox-light4))
  (js2-jsdoc-html-tag-delimiter              (:background nil :foreground gruvbox-light3))

  ;; popup
  (popup-face                                (:foreground gruvbox-light1 :background gruvbox-dark1))
  (popup-menu-mouse-face                     (:foreground gruvbox-light0 :background gruvbox-faded_green))
  (popup-menu-selection-face                 (:foreground gruvbox-light0 :background gruvbox-faded_green))
  (popup-tip-face                            (:foreground gruvbox-light2 :background gruvbox-dark2))

  ;; helm
  (helm-M-x-key                              (:foreground gruvbox-neutral_orange ))
  (helm-action                               (:foreground gruvbox-white :underline t))
  (helm-bookmark-addressbook                 (:foreground gruvbox-neutral_red))
  (helm-bookmark-directory                   (:foreground gruvbox-bright_purple))
  (helm-bookmark-file                        (:foreground gruvbox-faded_blue))
  (helm-bookmark-gnus                        (:foreground gruvbox-faded_purple))
  (helm-bookmark-info                        (:foreground gruvbox-turquoise4))
  (helm-bookmark-man                         (:foreground gruvbox-sienna))
  (helm-bookmark-w3m                         (:foreground gruvbox-neutral_yellow))
  (helm-buffer-directory                     (:foreground gruvbox-white :background gruvbox-bright_blue))
  (helm-buffer-not-saved                     (:foreground gruvbox-faded_red))
  (helm-buffer-process                       (:foreground gruvbox-burlywood4))
  (helm-buffer-saved-out                     (:foreground gruvbox-bright_red))
  (helm-buffer-size                          (:foreground gruvbox-bright_purple))
  (helm-candidate-number                     (:foreground gruvbox-neutral_green))
  (helm-ff-directory                         (:foreground gruvbox-neutral_purple))
  (helm-ff-executable                        (:foreground gruvbox-turquoise4))
  (helm-ff-file                              (:foreground gruvbox-sienna))
  (helm-ff-invalid-symlink                   (:foreground gruvbox-white :background gruvbox-bright_red))
  (helm-ff-prefix                            (:foreground gruvbox-black :background gruvbox-neutral_yellow))
  (helm-ff-symlink                           (:foreground gruvbox-neutral_orange))
  (helm-grep-cmd-line                        (:foreground gruvbox-neutral_green))
  (helm-grep-file                            (:foreground gruvbox-faded_purple))
  (helm-grep-finish                          (:foreground gruvbox-turquoise4))
  (helm-grep-lineno                          (:foreground gruvbox-neutral_orange))
  (helm-grep-match                           (:foreground gruvbox-neutral_yellow))
  (helm-grep-running                         (:foreground gruvbox-neutral_red))
  (helm-header                               (:foreground gruvbox-aquamarine4))
  (helm-helper                               (:foreground gruvbox-aquamarine4))
  (helm-history-deleted                      (:foreground gruvbox-black :background gruvbox-bright_red))
  (helm-history-remote                       (:foreground gruvbox-faded_red))
  (helm-lisp-completion-info                 (:foreground gruvbox-faded_orange))
  (helm-lisp-show-completion                 (:foreground gruvbox-bright_red))
  (helm-locate-finish                        (:foreground gruvbox-white :background gruvbox-aquamarine4))
  (helm-match                                (:foreground gruvbox-neutral_orange))
  (helm-moccur-buffer                        (:foreground gruvbox-bright_aqua :underline t))
  (helm-prefarg                              (:foreground gruvbox-turquoise4))
  (helm-selection                            (:foreground gruvbox-white :background gruvbox-dark2))
  (helm-selection-line                       (:foreground gruvbox-white :background gruvbox-dark2))
  (helm-separator                            (:foreground gruvbox-faded_red))
  (helm-source-header                        (:foreground gruvbox-light2))
  (helm-visible-mark                         (:foreground gruvbox-black :background gruvbox-light3))

  ;; mode support: sh-mode
  (sh-quoted-exec (:foreground gruvbox-bright_purple))
  (sh-heredoc     (:foreground gruvbox-bright_orange))

  ;; MODE SUPPORT: line numbers and visual relative line numbers
  (line-number              (:foreground gruvbox-dark2 :background gruvbox-dark0))
  (line-number-current-line (:foreground gruvbox-faded_yellow :background gruvbox-dark0_soft))

  ;; MODE SUPPORT: company (ported over from darktooth)
  (company-echo                              (:inherit 'company-echo-common))
  (company-echo-common                       (:foreground gruvbox-bright_blue :background nil))
  (company-preview-common                    (:underline gruvbox-light1))
  (company-preview                           (:inherit 'company-preview-common))
  (company-preview-search                    (:inherit 'company-preview-common))
  (company-template-field                    (:foreground gruvbox-bright_blue :background nil :underline gruvbox-dark_blue))
  (company-scrollbar-fg                      (:foreground nil :background gruvbox-dark2))
  (company-scrollbar-bg                      (:foreground nil :background gruvbox-dark3))
  (company-tooltip                           (:foreground gruvbox-light0_hard :background gruvbox-dark1))
  (company-preview-common                    (:inherit 'font-lock-comment-face))
  (company-tooltip-common                    (:foreground gruvbox-light0 :background gruvbox-dark1))
  (company-tooltip-annotation                (:foreground gruvbox-bright_blue :background gruvbox-dark1))
  (company-tooltip-common-selection          (:foreground gruvbox-light0 :background gruvbox-faded_blue))
  (company-tooltip-mouse                     (:foreground gruvbox-dark0 :background gruvbox-bright_blue))
  (company-tooltip-selection                 (:foreground gruvbox-light0 :background gruvbox-faded_blue))

  ;; Term
  (term-color-black                          (:foreground gruvbox-dark1))
  (term-color-blue                           (:foreground gruvbox-neutral_blue))
  (term-color-cyan                           (:foreground gruvbox-neutral_aqua))
  (term-color-green                          (:foreground gruvbox-neutral_green))
  (term-color-magenta                        (:foreground gruvbox-neutral_purple))
  (term-color-red                            (:foreground gruvbox-neutral_red))
  (term-color-white                          (:foreground gruvbox-light1))
  (term-color-yellow                         (:foreground gruvbox-neutral_yellow))
  (term-default-fg-color                     (:foreground gruvbox-light0))
  (term-default-bg-color                     (:background gruvbox-bg))

  ;; message-mode
  (message-header-to                         (:inherit 'font-lock-variable-name-face))
  (message-header-cc                         (:inherit 'font-lock-variable-name-face))
  (message-header-subject                    (:foreground gruvbox-neutral_orange :weight 'bold))
  (message-header-newsgroups                 (:foreground gruvbox-neutral_yellow :weight 'bold))
  (message-header-other                      (:inherit 'font-lock-variable-name-face))
  (message-header-name                       (:inherit 'font-lock-keyword-face))
  (message-header-xheader                    (:foreground gruvbox-faded_blue))
  (message-separator                         (:inherit 'font-lock-comment-face))
  (message-cited-text                        (:inherit 'font-lock-comment-face))
  (message-mml                               (:foreground gruvbox-faded_green :weight 'bold))

  ;; org-mode
  (org-meta-line                             (:foreground gruvbox-zerodark-orange-light :slant 'italic))
  (org-block                                 (:foreground gruvbox-light2 :background gruvbox-dark0))
  (org-hide                                  (:foreground gruvbox-dark0))
  (org-level-1                               (:foreground gruvbox-spacemacs-keyword))
  (org-level-2                               (:foreground gruvbox-spacemacs-head2))
  (org-level-3                               (:foreground gruvbox-neutral_purple))
  (org-level-4                               (:foreground gruvbox-neutral_orange))
  (org-level-5                               (:foreground gruvbox-spacemacs-keyword))
  (org-level-6                               (:foreground gruvbox-spacemacs-head2))
  (org-level-7                               (:foreground gruvbox-neutral_purple))
  (org-level-8                               (:foreground gruvbox-neutral_orange))
  (org-special-keyword                       (:inherit 'font-lock-comment-face))
  (org-drawer                                (:inherit 'font-lock-function-face))
  (org-column                                (:background gruvbox-dark0))
  (org-column-title                          (:background gruvbox-dark0 :underline t :weight 'bold))
  (org-warning                               (:foreground gruvbox-neutral_red :weight 'bold :underline nil :bold t))
  (org-archived                              (:foreground gruvbox-light0 :weight 'bold))
  (org-link                                  (:foreground gruvbox-zerodark-cyan :underline t))
  (org-footnote                              (:foreground gruvbox-neutral_aqua :underline t))
  (org-ellipsis                              (:foreground gruvbox-light4 :underline t))
  (org-date                                  (:foreground gruvbox-neutral_blue :underline t))
  (org-sexp-date                             (:foreground gruvbox-faded_blue :underline t))
  (org-tag                                   (:bold t :weight 'bold))
  (org-list-dt                               (:bold t :weight 'bold))
  (org-todo                                  (:foreground gruvbox-neutral_red :background gruvbox-dark_red :bold t))
  (org-done                                  (:foreground gruvbox-neutral_aqua :background gruvbox-dark_aqua :weight 'bold :bold t))
  (org-agenda-done                           (:foreground gruvbox-neutral_aqua))
  (org-headline-done                         (:foreground gruvbox-neutral_aqua))
  (org-table                                 (:foreground gruvbox-bright_aqua :background gruvbox-dark0))
  (org-formula                               (:foreground gruvbox-neutral_yellow))
  (org-document-title                        (:foreground gruvbox-faded_blue))
  (org-document-info                         (:foreground gruvbox-faded_blue))
  (org-agenda-structure                      (:inherit 'font-lock-comment-face))
  (org-agenda-date-today                     (:foreground gruvbox-light0 :weight 'bold :italic t))
  (org-scheduled                             (:foreground gruvbox-neutral_yellow))
  (org-scheduled-today                       (:foreground gruvbox-neutral_blue))
  (org-scheduled-previously                  (:foreground gruvbox-faded_red))
  (org-upcoming-deadline                     (:inherit 'font-lock-keyword-face))
  (org-deadline-announce                     (:foreground gruvbox-faded_red))
  (org-time-grid                             (:foreground gruvbox-faded_orange))

  ;; org-habit
  (org-habit-clear-face                      (:background gruvbox-faded_blue))
  (org-habit-clear-future-face               (:background gruvbox-neutral_blue))
  (org-habit-ready-face                      (:background gruvbox-faded_green))
  (org-habit-ready-future-face               (:background gruvbox-neutral_green))
  (org-habit-alert-face                      (:background gruvbox-faded_yellow))
  (org-habit-alert-future-face               (:background gruvbox-neutral_yellow))
  (org-habit-overdue-face                    (:background gruvbox-faded_red))
  (org-habit-overdue-future-face             (:background gruvbox-neutral_red))

  ;; elfeed
  (elfeed-search-title-face                  (:foreground gruvbox-gray  ))
  (elfeed-search-unread-title-face           (:foreground gruvbox-light0))
  (elfeed-search-date-face                   (:inherit 'font-lock-builtin-face :underline t))
  (elfeed-search-feed-face                   (:inherit 'font-lock-variable-name-face))
  (elfeed-search-tag-face                    (:inherit 'font-lock-keyword-face))
  (elfeed-search-last-update-face            (:inherit 'font-lock-comment-face))
  (elfeed-search-unread-count-face           (:inherit 'font-lock-comment-face))
  (elfeed-search-filter-face                 (:inherit 'font-lock-string-face))

  ;; Smart-mode-line
  (sml/global                                (:foreground gruvbox-burlywood4 :inverse-video nil))
  (sml/modes                                 (:foreground gruvbox-bright_green))
  (sml/filename                              (:foreground gruvbox-bright_red :weight 'bold))
  (sml/prefix                                (:foreground gruvbox-light1))
  (sml/read-only                             (:foreground gruvbox-neutral_blue))
  (persp-selected-face                       (:foreground gruvbox-neutral_orange))

  ;;isearch
  (isearch                                   (:foreground gruvbox-dark_orange :background gruvbox-bright_orange))
  (lazy-highlight                            (:foreground gruvbox-bright_orange :background gruvbox-dark_orange :underline t))
  (isearch-fail                              (:foreground gruvbox-light0 :background gruvbox-bright_red))

  ;; markdown-mode
  (markdown-header-face-1                    (:foreground gruvbox-neutral_blue))
  (markdown-header-face-2                    (:foreground gruvbox-neutral_yellow))
  (markdown-header-face-3                    (:foreground gruvbox-neutral_purple))
  (markdown-header-face-4                    (:foreground gruvbox-neutral_red))
  (markdown-header-face-5                    (:foreground gruvbox-neutral_green))
  (markdown-header-face-6                    (:foreground gruvbox-neutral_aqua))

  ;; anzu-mode
  (anzu-mode-line                            (:foreground gruvbox-bright_yellow :weight 'bold))
  (anzu-match-1                              (:background gruvbox-bright_green))
  (anzu-match-2                              (:background gruvbox-faded_yellow))
  (anzu-match-3                              (:background gruvbox-aquamarine4))
  (anzu-replace-to                           (:foreground gruvbox-bright_yellow))
  (anzu-replace-highlight                    (:inherit 'isearch))

  ;; Ace-jump-mode
  (ace-jump-face-background                  (:foreground gruvbox-light4 :background gruvbox-bg :inverse-video nil))
  (ace-jump-face-foreground                  (:foreground gruvbox-bright_red :background gruvbox-bg :inverse-video nil :box 1))

  ;; Ace-window
  (aw-background-face                        (:forground  gruvbox-light1 :background gruvbox-bg :inverse-video nil))
  (aw-leading-char-face                      (:foreground gruvbox-bright_orange :background gruvbox-bg :height 4.0 :box (:line-width 1 :color gruvbox-bright_orange)))

  ;; show-paren
  (show-paren-match                          (:background gruvbox-dark3 :weight 'bold))
  (show-paren-mismatch                       (:background gruvbox-bright_red :foreground gruvbox-dark3 :weight 'bold))

  ;; MODE SUPPORT: ivy
  (ivy-confirm-face                          (:foreground gruvbox-bright_green))
  (ivy-current-match                         (:background gruvbox-dark1 :inherit 'bold))
  (ivy-match-required-face                   (:foreground gruvbox-bright_red))
  (ivy-minibuffer-match-face-1               (:inherit 'bold))
  (ivy-minibuffer-match-face-2               (:foreground gruvbox-zerodark-spring-green :underline t))
  (ivy-minibuffer-match-face-3               (:foreground gruvbox-zerodark-cyan :underline t))
  (ivy-minibuffer-match-face-4               (:foreground gruvbox-spacemacs-comp :underline t))
  (ivy-remote                                (:foreground gruvbox-neutral_blue))
  (ivy-subdir                                (:foreground gruvbox-spacemacs-keyword))
  (ivy-modified-buffer                       (:foreground gruvbox-neutral_red))
  (ivy-virtual                               (:inherit 'font-lock-comment-face))
  (ivy-highlight-face                        (:foreground gruvbox-neutral_blue :underline t))
  ;; (ivy-action                                (:foreground gruvbox-corrupted-mid_cyan :box 1))
  ;; (ivy-cursor                                (:foreground gruvbox-corrupted-mid_cyan))

  ;; MODE SUPPORT: avy
  (avy-lead-face   (:foreground gruvbox-zerodark-red         :background gruvbox-dark2 :inherit 'bold))
  (avy-lead-face-0 (:foreground gruvbox-zerodark-spring-green :background gruvbox-dark2 :inherit 'bold))
  (avy-lead-face-2 (:foreground gruvbox-zerodark-cyan         :background gruvbox-dark2 :inherit 'bold))
  (avy-lead-face-1 (:foreground gruvbox-bright_orange            :background gruvbox-dark2 :inherit 'bold))

  ;; MODE SUPPORT: vim-empty-lines
  (vim-empty-lines-face                               (:foreground gruvbox-dark2))

  ;; MODE SUPPORT: eyebrowse
  (eyebrowse-mode-line-active               (:foreground gruvbox-faded_purple))
  (eyebrowse-mode-line-inactive             (:foreground gruvbox-black))

  ;; MODE SUPPORT: powerline/spaceline
  (powerline-active1 (:background gruvbox-dark0_hard))
  (powerline-active2 (:background gruvbox-dark0))
  (spaceline-evil-normal (:background gruvbox-zerodark-bluedark))
  (spaceline-evil-insert (:background gruvbox-corrupted-mid_green))
  (spaceline-evil-visual (:background gruvbox-corrupted-dark_purple))
  (spaceline-evil-replace (:background gruvbox-muted_red))

  ;; web-mode
  (nxml-element-local-name                  (:foreground gruvbox-bright_purple))
  (web-mode-html-tag-face                   (:foreground gruvbox-bright_purple))
  (web-mode-symbol-face                     (:foreground gruvbox-faded_red))

  ;; ediff
  (ediff-current-diff-A         (:background red-bg-s   :foreground red))
  (ediff-current-diff-Ancestor  (:background aqua-bg    :foreground aqua))
  (ediff-current-diff-B         (:background green-bg-s :foreground green))
  (ediff-current-diff-C         (:background blue-bg    :foreground blue))
  (ediff-even-diff-A            (:background bg3))
  (ediff-even-diff-Ancestor     (:background bg3))
  (ediff-even-diff-B            (:background bg3))
  (ediff-even-diff-C            (:background bg3))
  (ediff-fine-diff-A            (:background nil :inherit 'bold))
  (ediff-fine-diff-Ancestor     (:background nil :inherit 'bold))
  (ediff-fine-diff-B            (:background nil :inherit 'bold))
  (ediff-fine-diff-C            (:background nil :inherit 'bold))
  (ediff-odd-diff-A             (:background bg4))
  (ediff-odd-diff-Ancestor      (:background bg4))
  (ediff-odd-diff-B             (:background bg4))
  (ediff-odd-diff-C             (:background bg4))


  ;; MODE SUPPORT: magit
  (magit-branch                              (:foreground gruvbox-turquoise4 :background nil :box 1))
  (magit-branch-current                      (:foreground gruvbox-faded_blue :box 1))
  (magit-branch-local                        (:foreground gruvbox-bright_green :background nil :box 1))
  (magit-branch-remote                       (:foreground gruvbox-bright_red :background nil :box 1))
  (magit-tag                                 (:foreground gruvbox-faded_purple :box 1))
  (magit-cherry-equivalent                   (:foreground gruvbox-neutral_orange))
  (magit-cherry-unmatched                    (:foreground gruvbox-neutral_purple))
  (magit-diff-context                        (:foreground gruvbox-dark3 :background nil))
  (magit-diff-context-highlight              (:foreground gruvbox-dark4 :background gruvbox-dark0_soft))
  (magit-diff-added                          (:foreground gruvbox-bright_green :background gruvbox-mid_green))
  (magit-diff-added-highlight                (:foreground gruvbox-bright_green :background gruvbox-mid_green))
  (magit-diff-removed                        (:foreground gruvbox-bright_red :background gruvbox-mid_red))
  (magit-diff-removed-highlight              (:foreground gruvbox-bright_red :background gruvbox-mid_red))
  (magit-diff-file-heading                   (:foreground gruvbox-faded_purple))
  (magit-diff-file-heading-highlight         (:foreground gruvbox-faded_purple))
  (magit-diff-file-heading-selection         (:foreground gruvbox-faded_purple))
  (magit-filename                            (:foreground gruvbox-mid_aqua))
  (magit-diff-hunk-header                    (:foreground gruvbox-neutral_aqua))
  (magit-diff-merge-current                  (:background gruvbox-dark_yellow))
  (magit-diff-merge-diff3-separator          (:foreground gruvbox-neutral_orange :weight 'bold))
  (magit-diff-merge-proposed                 (:background gruvbox-dark_green))
  (magit-diff-merge-separator                (:foreground gruvbox-neutral_orange))
  (magit-diff-none                           (:foreground gruvbox-gray))
  (magit-item-highlight                      (:background gruvbox-dark1 :weight 'normal))
  (magit-item-mark                           (:background gruvbox-dark0))
  (magit-key-mode-args-face                  (:foreground gruvbox-light4))
  (magit-key-mode-button-face                (:foreground gruvbox-neutral_orange :weight 'bold))
  (magit-key-mode-header-face                (:foreground gruvbox-light4 :weight 'bold))
  (magit-key-mode-switch-face                (:foreground gruvbox-turquoise4 :weight 'bold))
  (magit-log-author                          (:foreground gruvbox-neutral_aqua))
  (magit-log-date                            (:foreground gruvbox-faded_orange))
  (magit-log-graph                           (:foreground gruvbox-light1))
  (magit-log-head-label-bisect-bad           (:foreground gruvbox-bright_red))
  (magit-log-head-label-bisect-good          (:foreground gruvbox-bright_green))
  (magit-log-head-label-bisect-skip          (:foreground gruvbox-neutral_yellow))
  (magit-log-head-label-default              (:foreground gruvbox-neutral_blue))
  (magit-log-head-label-head                 (:foreground gruvbox-light0 :background gruvbox-dark_aqua))
  (magit-log-head-label-local                (:foreground gruvbox-faded_blue :weight 'bold))
  (magit-log-head-label-patches              (:foreground gruvbox-faded_orange))
  (magit-log-head-label-remote               (:foreground gruvbox-neutral_blue :weight 'bold))
  (magit-log-head-label-tags                 (:foreground gruvbox-neutral_aqua))
  (magit-log-head-label-wip                  (:foreground gruvbox-neutral_red))
  (magit-log-message                         (:foreground gruvbox-light1))
  (magit-log-reflog-label-amend              (:foreground gruvbox-bright_blue))
  (magit-log-reflog-label-checkout           (:foreground gruvbox-bright_yellow))
  (magit-log-reflog-label-cherry-pick        (:foreground gruvbox-neutral_red))
  (magit-log-reflog-label-commit             (:foreground gruvbox-neutral_green))
  (magit-log-reflog-label-merge              (:foreground gruvbox-bright_green))
  (magit-log-reflog-label-other              (:foreground gruvbox-faded_red))
  (magit-log-reflog-label-rebase             (:foreground gruvbox-bright_blue))
  (magit-log-reflog-label-remote             (:foreground gruvbox-neutral_orange))
  (magit-log-reflog-label-reset              (:foreground gruvbox-neutral_yellow))
  (magit-log-sha1                            (:foreground gruvbox-bright_orange))
  (magit-process-ng                          (:foreground gruvbox-bright_red :weight 'bold))
  (magit-process-ok                          (:foreground gruvbox-bright_green :weight 'bold))
  (magit-section-heading                     (:foreground gruvbox-muted_cyan)) ;; above added files
  ;; (magit-section-highlight                   (:foreground gruvbox-light2 :background gruvbox-dark_blue))
  (magit-signature-bad                       (:foreground gruvbox-bright_red :weight 'bold))
  (magit-signature-good                      (:foreground gruvbox-bright_green :weight 'bold))
  (magit-signature-none                      (:foreground gruvbox-faded_red))
  (magit-signature-untrusted                 (:foreground gruvbox-bright_purple :weight 'bold))
  (magit-whitespace-warning-face             (:background gruvbox-faded_red))
  (magit-bisect-bad                          (:foreground gruvbox-faded_red))
  (magit-bisect-good                         (:foreground gruvbox-neutral_green))
  (magit-bisect-skip                         (:foreground gruvbox-light2))
  (magit-blame-date                          (:inherit 'magit-blame-heading))
  (magit-blame-name                          (:inherit 'magit-blame-heading))
  (magit-blame-hash                          (:inherit 'magit-blame-heading))
  (magit-blame-summary                       (:inherit 'magit-blame-heading))
  (magit-blame-heading                       (:background gruvbox-dark1 :foreground gruvbox-light0))
  (magit-sequence-onto                       (:inherit 'magit-sequence-done))
  (magit-sequence-done                       (:inherit 'magit-hash))
  (magit-sequence-drop                       (:foreground gruvbox-faded_red))
  (magit-sequence-head                       (:foreground gruvbox-faded_cyan))
  (magit-sequence-part                       (:foreground gruvbox-bright_yellow))
  (magit-sequence-stop                       (:foreground gruvbox-bright_aqua))
  (magit-sequence-pick                       (:inherit 'default))
  (magit-refname-wip                         (:inherit 'magit-refname))
  (magit-refname-stash                       (:inherit 'magit-refname))
  (magit-refname                             (:foreground gruvbox-light2))
  (magit-head                                (:inherit 'magit-branch-local))
  (magit-popup-disabled-argument             (:foreground gruvbox-light4))
  (git-commit-summary                        (:foreground gruvbox-light2))

  ;; MODE SUPPORT: standard dired
  (dired-directory                          (:foreground gruvbox-spacemacs-keyword))
  (dired-flagged                            (:foreground gruvbox-bright_red))
  (dired-header                             (:foreground gruvbox-spacemacs-comp :inherit 'bold))
  (dired-ignored                            (:inherit 'shadow))
  (dired-mark                               (:foreground gruvbox-spacemacs-comp :inherit 'bold))
  (dired-marked                             (:foreground gruvbox-bright_purple :inherit 'bold))
  (dired-perm-write                         (:foreground gruvbox-light3 :underline t))
  (dired-symlink                            (:foreground gruvbox-faded_cyan :background gruvbox-dark0 :inherit 'bold))
  (dired-warning                            (:foreground gruvbox-bright_orange))

  ;; MODE SUPPORT: info
  (info-header-xref    (:foreground gruvbox-spacemacs-func :underline t))
  (info-menu           (:foreground gruvbox-spacemacs-mat))
  (info-node           (:foreground gruvbox-spacemacs-func :inherit 'bold))
  (info-quoted-name    (:foreground gruvbox-spacemacs-keyword))
  (info-string         (:foreground gruvbox-spacemacs-head2))
  (info-reference-item (:background nil :underline t :inherit 'bold))
  (info-title-1        (:height 1.5 :inherit 'bold))
  (info-title-2        (:height 1.4 :inherit 'bold))
  (info-title-3        (:height 1.3))
  (info-title-4        (:height 1.2))
  (info-xref           (:inherit 'org-link))

  ;; MODE SUPPORT: dired+
  (diredp-file-name                          (:foreground gruvbox-light2))
  (diredp-file-suffix                        (:foreground gruvbox-light4))
  (diredp-compressed-file-suffix             (:foreground gruvbox-faded_blue))
  (diredp-dir-name                           (:foreground gruvbox-faded_blue))
  (diredp-dir-heading                        (:foreground gruvbox-bright_blue))
  (diredp-symlink                            (:foreground gruvbox-bright_orange))
  (diredp-date-time                          (:foreground gruvbox-light3))
  (diredp-number                             (:foreground gruvbox-faded_blue))
  (diredp-no-priv                            (:foreground gruvbox-dark4))
  (diredp-other-priv                         (:foreground gruvbox-dark2))
  (diredp-rare-priv                          (:foreground gruvbox-dark4))
  (diredp-ignored-file-name                  (:foreground gruvbox-dark4))
  (diredp-dir-priv                           (:foreground gruvbox-faded_blue  :background gruvbox-dark_blue))
  (diredp-exec-priv                          (:foreground gruvbox-faded_blue  :background gruvbox-dark_blue))
  (diredp-link-priv                          (:foreground gruvbox-faded_aqua  :background gruvbox-dark_aqua))
  (diredp-read-priv                          (:foreground gruvbox-bright_red  :background gruvbox-dark_red))
  (diredp-write-priv                         (:foreground gruvbox-bright_aqua :background gruvbox-dark_aqua))

  )


 (defface gruvbox-modeline-three-active
   `((t
      (:foreground ,gruvbox-muted_orange
                   :background ,gruvbox-dark0
                   ;; :height 120
                   :inverse-video nil
                   :box (:line-width 6 :color ,gruvbox-dark0_hard :style nil))))
   "gruvbox modeline inactive three")

 (defface gruvbox-modeline-three-inactive
   `((t
      (:foreground ,gruvbox-dark_orange
                   :background ,gruvbox-dark1
                   :foreground ,gruvbox-faded_orange
                   ;; :height 120
                   :inverse-video nil
                   :box (:line-width 6 :color ,gruvbox-dark1 :style nil))))
   "gruvbox modeline active three")

 (custom-theme-set-variables 'gruvbox
                             `(ansi-color-names-vector
                               [,gruvbox-dark1
                                ,gruvbox-neutral_red
                                ,gruvbox-neutral_green
                                ,gruvbox-neutral_yellow
                                ,gruvbox-neutral_blue
                                ,gruvbox-neutral_purple
                                ,gruvbox-neutral_aqua
                                ,gruvbox-light1])))



(defun gruvbox-modeline-three ()
  "Optional modeline style three for gruvbox."
  (interactive)
  (set-face-attribute 'mode-line nil
                      :foreground (face-attribute 'gruvbox-modeline-three-active :foreground)
                      :background (face-attribute 'gruvbox-modeline-three-active :background)
                      :inverse-video nil
                      :box `(:line-width 6 :color ,(face-attribute 'gruvbox-modeline-three-active :background) :style nil))
  (set-face-attribute 'mode-line-inactive nil
                      :foreground (face-attribute 'gruvbox-modeline-three-inactive :foreground)
                      :background (face-attribute 'gruvbox-modeline-three-inactive :background)
                      :inverse-video nil
                      :box `(:line-width 6 :color ,(face-attribute 'gruvbox-modeline-three-inactive :background) :style nil)))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'gruvbox)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; gruvbox-theme.el ends here
