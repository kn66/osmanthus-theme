;;; osmanthus-theme.el --- A warm, auspicious light theme -*- lexical-binding: t; -*-

;; Copyright (C) 2026

;; Author: nobu43
;; URL: https://github.com/kn66/osmanthus-theme
;; Keywords: faces, theme
;; Package-Requires: ((emacs "30.1"))
;; Version: 0.2.0

;;; Commentary:

;; Osmanthus is an independent light theme.  It does not inherit from
;; Modus Themes or any other theme package.
;;
;; Gold and yellow carry the strongest visual emphasis while warm white,
;; beige, and brown form the foundation.  Water blue, navy, lavender,
;; violet, pink, orange, silver, and deep red separate syntax and states.
;;
;; Every face shipped in the Emacs 30.2 Lisp sources is named explicitly
;; below, including package families such as Gnus and Smerge.  The theme
;; performs no face discovery, name classification, hooks, timers, or
;; late-loading refresh at run time.

;;; Code:

;;;###theme-autoload
(deftheme osmanthus
  "A warm, gold-centered light theme with explicit built-in faces."
  :family 'osmanthus
  :kind 'color-scheme
  :background-mode 'light)

(defconst osmanthus-palette
  '((bg-main . "#FFFDF4") (bg-dim . "#F8F0D2") (bg-alt . "#F4E8BD")
    (bg-active . "#FFF6D6") (bg-region . "#F6D87A")
    (bg-search . "#FFD45A") (bg-blue . "#E4F2F6") (bg-red . "#F9E3E7")
    (bg-orange . "#FBE8D7") (bg-lavender . "#EEE8F7")
    (fg-main . "#3A322B") (fg-dim . "#746B61") (fg-faint . "#776E62")
    (border . "#D4C59E") (gold . "#986500") (gold-dark . "#744C00")
    (ochre . "#A75E00") (navy . "#294C68") (navy-dark . "#203D53")
    (water . "#2F708A") (water-dark . "#20566D") (red . "#AA3D4F")
    (red-dark . "#8E2F43") (orange . "#B85116") (pink . "#A93F70")
    (lavender . "#725A9C") (violet . "#5E3A82") (silver . "#68707A")
    (mode-line . "#E5B83F") (mode-line-dim . "#EDE7D7"))
  "Color roles used by `osmanthus'.")

(let (
      (bg-main (alist-get 'bg-main osmanthus-palette))
      (bg-dim (alist-get 'bg-dim osmanthus-palette))
      (bg-active (alist-get 'bg-active osmanthus-palette))
      (bg-region (alist-get 'bg-region osmanthus-palette))
      (bg-search (alist-get 'bg-search osmanthus-palette))
      (bg-blue (alist-get 'bg-blue osmanthus-palette))
      (bg-red (alist-get 'bg-red osmanthus-palette))
      (bg-lavender (alist-get 'bg-lavender osmanthus-palette))
      (fg-main (alist-get 'fg-main osmanthus-palette))
      (fg-dim (alist-get 'fg-dim osmanthus-palette))
      (fg-faint (alist-get 'fg-faint osmanthus-palette))
      (border (alist-get 'border osmanthus-palette))
      (gold (alist-get 'gold osmanthus-palette))
      (gold-dark (alist-get 'gold-dark osmanthus-palette))
      (ochre (alist-get 'ochre osmanthus-palette))
      (navy (alist-get 'navy osmanthus-palette))
      (navy-dark (alist-get 'navy-dark osmanthus-palette))
      (water (alist-get 'water osmanthus-palette))
      (water-dark (alist-get 'water-dark osmanthus-palette))
      (red (alist-get 'red osmanthus-palette))
      (red-dark (alist-get 'red-dark osmanthus-palette))
      (orange (alist-get 'orange osmanthus-palette))
      (pink (alist-get 'pink osmanthus-palette))
      (lavender (alist-get 'lavender osmanthus-palette))
      (violet (alist-get 'violet osmanthus-palette))
      (silver (alist-get 'silver osmanthus-palette))
      (mode-line (alist-get 'mode-line osmanthus-palette))
      (mode-line-dim (alist-get 'mode-line-dim osmanthus-palette))
      )
  (custom-theme-set-faces
   'osmanthus
   `(default ((t (:foreground ,fg-main :background ,bg-main))))

   ;; Built-in: abbrev.el.gz
   `(abbrev-table-name ((t (:foreground ,fg-main))))

   ;; Built-in: ansi-color.el.gz
   `(ansi-color-black ((t (:foreground ,fg-main))))
   `(ansi-color-blue ((t (:foreground ,navy))))
   `(ansi-color-bold ((t (:foreground ,fg-main))))
   `(ansi-color-bright-black ((t (:foreground ,fg-dim))))
   `(ansi-color-bright-blue ((t (:foreground ,water))))
   `(ansi-color-bright-cyan ((t (:foreground ,water))))
   `(ansi-color-bright-green ((t (:foreground ,water))))
   `(ansi-color-bright-magenta ((t (:foreground ,pink))))
   `(ansi-color-bright-red ((t (:foreground ,red))))
   `(ansi-color-bright-white ((t (:foreground ,fg-main))))
   `(ansi-color-bright-yellow ((t (:foreground ,ochre))))
   `(ansi-color-cyan ((t (:foreground ,water-dark))))
   `(ansi-color-faint ((t (:foreground ,fg-dim))))
   `(ansi-color-fast-blink ((t (:foreground ,water))))
   `(ansi-color-green ((t (:foreground ,water-dark))))
   `(ansi-color-inverse ((t (:foreground ,fg-main))))
   `(ansi-color-italic ((t (:foreground ,fg-main))))
   `(ansi-color-magenta ((t (:foreground ,violet))))
   `(ansi-color-red ((t (:foreground ,red-dark))))
   `(ansi-color-slow-blink ((t (:foreground ,water))))
   `(ansi-color-underline ((t (:foreground ,fg-main))))
   `(ansi-color-white ((t (:foreground ,silver))))
   `(ansi-color-yellow ((t (:foreground ,gold-dark))))

   ;; Built-in: apropos.el.gz
   `(apropos-button ((t (:foreground ,water))))
   `(apropos-function-button ((t (:foreground ,water))))
   `(apropos-keybinding ((t (:foreground ,gold :weight semibold))))
   `(apropos-misc-button ((t (:foreground ,water))))
   `(apropos-property ((t (:foreground ,pink))))
   `(apropos-symbol ((t (:foreground ,fg-main))))
   `(apropos-user-option-button ((t (:foreground ,water))))
   `(apropos-variable-button ((t (:foreground ,water))))

   ;; Built-in: battery.el.gz
   `(battery-load-critical ((t (:foreground ,orange :weight semibold))))
   `(battery-load-low ((t (:foreground ,fg-main))))

   ;; Built-in: bookmark.el.gz
   `(bookmark-face ((t (:foreground ,fg-main))))
   `(bookmark-menu-bookmark ((t (:foreground ,fg-main))))

   ;; Built-in: buff-menu.el.gz
   `(Buffer-menu-buffer ((t (:foreground ,fg-main))))
   `(buffer-menu-buffer ((t (:foreground ,fg-main))))

   ;; Built-in: button.el.gz
   `(button ((t (:foreground ,water))))

   ;; Built-in: calc/calc.el.gz
   `(calc-nonselected-face ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(calc-selected-face ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))

   ;; Built-in: calendar/appt.el.gz
   `(appt-notification ((t (:foreground ,fg-main))))

   ;; Built-in: calendar/calendar.el.gz
   `(calendar-month-header ((t (:foreground ,navy :weight semibold))))
   `(calendar-today ((t (:foreground ,pink))))
   `(calendar-weekday-header ((t (:foreground ,navy :weight semibold))))
   `(calendar-weekend-header ((t (:foreground ,navy :weight semibold))))
   `(diary ((t (:foreground ,pink))))
   `(holiday ((t (:foreground ,pink))))

   ;; Built-in: calendar/diary-lib.el.gz
   `(diary-anniversary ((t (:foreground ,pink))))
   `(diary-button ((t (:foreground ,water))))
   `(diary-time ((t (:foreground ,pink))))

   ;; Built-in: calendar/todo-mode.el.gz
   `(todo-archived-only ((t (:foreground ,fg-main))))
   `(todo-button ((t (:foreground ,water))))
   `(todo-category-string ((t (:foreground ,red-dark))))
   `(todo-comment ((t (:foreground ,fg-dim))))
   `(todo-date ((t (:foreground ,pink))))
   `(todo-diary-expired ((t (:foreground ,pink))))
   `(todo-done ((t (:foreground ,water-dark :weight semibold))))
   `(todo-done-sep ((t (:foreground ,water-dark :weight semibold))))
   `(todo-key-prompt ((t (:foreground ,gold :weight semibold))))
   `(todo-mark ((t (:foreground ,fg-main))))
   `(todo-nondiary ((t (:foreground ,pink))))
   `(todo-prefix-string ((t (:foreground ,red-dark))))
   `(todo-search ((t (:foreground ,fg-main))))
   `(todo-sorted-column ((t (:foreground ,fg-main))))
   `(todo-time ((t (:foreground ,pink))))
   `(todo-top-priority ((t (:foreground ,fg-main))))

   ;; Built-in: cedet/pulse.el.gz
   `(pulse-highlight-face ((t (:foreground ,fg-main :background ,bg-active :extend t))))
   `(pulse-highlight-start-face ((t (:foreground ,fg-main :background ,bg-active :extend t))))

   ;; Built-in: cedet/semantic/complete.el.gz
   `(semantic-complete-inline-face ((t (:foreground ,fg-main))))

   ;; Built-in: cedet/semantic/decorate/include.el.gz
   `(semantic-decoration-on-fileless-includes ((t (:foreground ,fg-main))))
   `(semantic-decoration-on-includes ((t (:foreground ,fg-main))))
   `(semantic-decoration-on-unknown-includes ((t (:foreground ,fg-main))))
   `(semantic-decoration-on-unparsed-includes ((t (:foreground ,fg-main))))

   ;; Built-in: cedet/semantic/decorate/mode.el.gz
   `(semantic-decoration-on-private-members-face ((t (:foreground ,fg-main))))
   `(semantic-decoration-on-protected-members-face ((t (:foreground ,fg-main))))
   `(semantic-tag-boundary-face ((t (:foreground ,fg-main))))

   ;; Built-in: cedet/semantic/idle.el.gz
   `(semantic-idle-symbol-highlight ((t (:foreground ,fg-main))))

   ;; Built-in: cedet/semantic/senator.el.gz
   `(senator-momentary-highlight-face ((t (:foreground ,fg-main))))

   ;; Built-in: cedet/semantic/util-modes.el.gz
   `(semantic-highlight-edits-face ((t (:foreground ,fg-main))))
   `(semantic-highlight-func-current-tag-face ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(semantic-unmatched-syntax-face ((t (:foreground ,red-dark :background ,bg-red))))

   ;; Built-in: cedet/srecode/fields.el.gz
   `(srecode-field-face ((t (:foreground ,fg-main))))

   ;; Built-in: cedet/srecode/srt-mode.el.gz
   `(srecode-separator-face ((t (:foreground ,fg-main))))

   ;; Built-in: comint.el.gz
   `(comint-highlight-input ((t (:foreground ,fg-main))))
   `(comint-highlight-prompt ((t (:foreground ,gold :weight semibold))))

   ;; Built-in: completion-preview.el.gz
   `(completion-preview ((t (:foreground ,fg-dim :background ,bg-main :slant italic))))
   `(completion-preview-common ((t (:foreground ,fg-dim :background ,bg-main :slant italic))))
   `(completion-preview-exact ((t (:foreground ,fg-dim :background ,bg-main :slant italic))))
   `(completion-preview-highlight ((t (:foreground ,navy-dark :background ,bg-region :weight semibold :extend t))))

   ;; Built-in: cus-edit.el.gz
   `(custom-button ((t (:foreground ,water))))
   `(custom-button-mouse ((t (:foreground ,water))))
   `(custom-button-pressed ((t (:foreground ,water))))
   `(custom-button-pressed-unraised ((t (:foreground ,water))))
   `(custom-button-unraised ((t (:foreground ,water))))
   `(custom-changed ((t (:foreground ,gold-dark :background ,bg-active))))
   `(custom-comment ((t (:foreground ,fg-dim))))
   `(custom-comment-tag ((t (:foreground ,fg-dim))))
   `(custom-documentation ((t (:foreground ,red-dark))))
   `(custom-face-tag ((t (:foreground ,fg-main))))
   `(custom-group-subtitle ((t (:foreground ,navy :weight semibold))))
   `(custom-group-tag ((t (:foreground ,fg-main))))
   `(custom-group-tag-1 ((t (:foreground ,fg-main))))
   `(custom-invalid ((t (:foreground ,red-dark))))
   `(custom-link ((t (:foreground ,water))))
   `(custom-modified ((t (:foreground ,gold-dark :background ,bg-active))))
   `(custom-rogue ((t (:foreground ,fg-main))))
   `(custom-saved ((t (:foreground ,fg-main))))
   `(custom-set ((t (:foreground ,fg-main))))
   `(custom-state ((t (:foreground ,fg-main))))
   `(custom-themed ((t (:foreground ,fg-main))))
   `(custom-variable-button ((t (:foreground ,water))))
   `(custom-variable-obsolete ((t (:foreground ,pink))))
   `(custom-variable-tag ((t (:foreground ,pink))))
   `(custom-visibility ((t (:foreground ,fg-main))))

   ;; Built-in: dired.el.gz
   `(dired-broken-symlink ((t (:foreground ,fg-dim))))
   `(dired-directory ((t (:foreground ,navy :weight semibold))))
   `(dired-flagged ((t (:foreground ,fg-main))))
   `(dired-header ((t (:foreground ,navy :weight semibold))))
   `(dired-ignored ((t (:foreground ,fg-dim))))
   `(dired-mark ((t (:foreground ,gold :weight semibold))))
   `(dired-marked ((t (:foreground ,gold :weight semibold))))
   `(dired-perm-write ((t (:foreground ,fg-main))))
   `(dired-set-id ((t (:foreground ,fg-main))))
   `(dired-special ((t (:foreground ,fg-main))))
   `(dired-symlink ((t (:foreground ,water))))
   `(dired-warning ((t (:foreground ,orange :weight semibold))))

   ;; Built-in: doc-view.el.gz
   `(doc-view-svg-face ((t (:foreground ,red-dark))))

   ;; Built-in: edmacro.el.gz
   `(edmacro-label ((t (:foreground ,lavender :weight semibold))))

   ;; Built-in: emacs-lisp/edebug.el.gz
   `(edebug-disabled-breakpoint ((t (:foreground ,red-dark))))
   `(edebug-enabled-breakpoint ((t (:foreground ,red-dark))))

   ;; Built-in: emacs-lisp/eieio-custom.el.gz
   `(eieio-custom-slot-tag-face ((t (:foreground ,fg-main))))

   ;; Built-in: emacs-lisp/eldoc.el.gz
   `(eldoc-highlight-function-argument ((t (:foreground ,gold :weight semibold))))

   ;; Built-in: emacs-lisp/ert.el.gz
   `(ert-test-result-expected ((t (:foreground ,fg-main))))
   `(ert-test-result-unexpected ((t (:foreground ,fg-main))))

   ;; Built-in: emacs-lisp/icons.el.gz
   `(icon ((t (:foreground ,fg-main))))
   `(icon-button ((t (:foreground ,water))))

   ;; Built-in: emacs-lisp/package.el.gz
   `(package-description ((t (:foreground ,water))))
   `(package-help-section-name ((t (:foreground ,gold :weight semibold))))
   `(package-name ((t (:foreground ,gold :weight semibold))))
   `(package-status-avail-obso ((t (:foreground ,fg-main))))
   `(package-status-available ((t (:foreground ,fg-main))))
   `(package-status-built-in ((t (:foreground ,fg-main))))
   `(package-status-dependency ((t (:foreground ,fg-main))))
   `(package-status-disabled ((t (:foreground ,fg-dim))))
   `(package-status-external ((t (:foreground ,fg-main))))
   `(package-status-from-source ((t (:foreground ,fg-main))))
   `(package-status-held ((t (:foreground ,fg-main))))
   `(package-status-incompat ((t (:foreground ,fg-main))))
   `(package-status-installed ((t (:foreground ,fg-main))))
   `(package-status-new ((t (:foreground ,fg-main))))
   `(package-status-unsigned ((t (:foreground ,fg-main))))

   ;; Built-in: emacs-lisp/re-builder.el.gz
   `(reb-match-0 ((t (:foreground ,fg-main))))
   `(reb-match-1 ((t (:foreground ,fg-main))))
   `(reb-match-2 ((t (:foreground ,fg-main))))
   `(reb-match-3 ((t (:foreground ,fg-main))))
   `(reb-regexp-grouping-backslash ((t (:foreground ,fg-main))))
   `(reb-regexp-grouping-construct ((t (:foreground ,fg-main))))

   ;; Built-in: emacs-lisp/shortdoc.el.gz
   `(shortdoc-heading ((t (:foreground ,red-dark))))
   `(shortdoc-section ((t (:foreground ,red-dark))))

   ;; Built-in: emacs-lisp/shorthands.el.gz
   `(elisp-shorthand-font-lock-face ((t (:foreground ,lavender :weight semibold))))

   ;; Built-in: emacs-lisp/tabulated-list.el.gz
   `(tabulated-list-fake-header ((t (:foreground ,navy :weight semibold))))

   ;; Built-in: emacs-lisp/testcover.el.gz
   `(testcover-1value ((t (:foreground ,pink))))
   `(testcover-nohits ((t (:foreground ,fg-main))))

   ;; Built-in: emacs-lisp/vtable.el.gz
   `(vtable ((t (:foreground ,fg-main))))

   ;; Built-in: emulation/cua-base.el.gz
   `(cua-global-mark ((t (:foreground ,fg-main))))
   `(cua-rectangle ((t (:foreground ,fg-main))))
   `(cua-rectangle-noselect ((t (:foreground ,fg-main))))

   ;; Built-in: emulation/viper-init.el.gz
   `(viper-minibuffer-emacs ((t (:foreground ,fg-main))))
   `(viper-minibuffer-insert ((t (:foreground ,fg-main))))
   `(viper-minibuffer-vi ((t (:foreground ,fg-main))))
   `(viper-replace-overlay ((t (:foreground ,fg-main))))
   `(viper-search ((t (:foreground ,fg-main))))

   ;; Built-in: epa.el.gz
   `(epa-field-body ((t (:foreground ,fg-main))))
   `(epa-field-name ((t (:foreground ,fg-main))))
   `(epa-mark ((t (:foreground ,fg-main))))
   `(epa-string ((t (:foreground ,red-dark))))
   `(epa-validity-disabled ((t (:foreground ,fg-dim))))
   `(epa-validity-high ((t (:foreground ,fg-main))))
   `(epa-validity-low ((t (:foreground ,fg-main))))
   `(epa-validity-medium ((t (:foreground ,fg-main))))

   ;; Built-in: erc/erc-button.el.gz
   `(erc-button ((t (:foreground ,water))))
   `(erc-button-nick-default-face ((t (:foreground ,water))))

   ;; Built-in: erc/erc-capab.el.gz
   `(erc-capab-identify-unidentified ((t (:foreground ,fg-main))))

   ;; Built-in: erc/erc-fill.el.gz
   `(erc-fill-wrap-merge-indicator-face ((t (:foreground ,fg-main))))

   ;; Built-in: erc/erc-goodies.el.gz
   `(bg:erc-color-face0 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face1 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face10 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face11 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face12 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face13 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face14 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face15 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face2 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face3 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face4 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face5 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face6 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face7 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face8 ((t (:foreground ,fg-main))))
   `(bg:erc-color-face9 ((t (:foreground ,fg-main))))
   `(erc-bold-face ((t (:foreground ,fg-main))))
   `(erc-command-indicator-face ((t (:foreground ,gold :weight semibold))))
   `(erc-inverse-face ((t (:foreground ,fg-main))))
   `(erc-italic-face ((t (:foreground ,fg-main))))
   `(erc-keep-place-indicator-arrow ((t (:foreground ,fg-main))))
   `(erc-keep-place-indicator-line ((t (:foreground ,fg-main))))
   `(erc-spoiler-face ((t (:foreground ,fg-main))))
   `(erc-underline-face ((t (:foreground ,fg-main))))
   `(fg:erc-color-face0 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face1 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face10 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face11 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face12 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face13 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face14 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face15 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face2 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face3 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face4 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face5 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face6 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face7 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face8 ((t (:foreground ,fg-main))))
   `(fg:erc-color-face9 ((t (:foreground ,fg-main))))

   ;; Built-in: erc/erc-match.el.gz
   `(erc-current-nick-face ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(erc-dangerous-host-face ((t (:foreground ,fg-main))))
   `(erc-fool-face ((t (:foreground ,fg-main))))
   `(erc-keyword-face ((t (:foreground ,lavender :weight semibold))))
   `(erc-pal-face ((t (:foreground ,fg-main))))

   ;; Built-in: erc/erc-stamp.el.gz
   `(erc-timestamp-face ((t (:foreground ,pink))))

   ;; Built-in: erc/erc.el.gz
   `(erc-action-face ((t (:foreground ,fg-main))))
   `(erc-default-face ((t (:foreground ,fg-main))))
   `(erc-direct-msg-face ((t (:foreground ,fg-main))))
   `(erc-error-face ((t (:foreground ,red-dark))))
   `(erc-header-line ((t (:foreground ,navy :weight semibold))))
   `(erc-information ((t (:foreground ,fg-main))))
   `(erc-input-face ((t (:foreground ,fg-main))))
   `(erc-my-nick-face ((t (:foreground ,fg-main))))
   `(erc-my-nick-prefix-face ((t (:foreground ,fg-main))))
   `(erc-nick-default-face ((t (:foreground ,fg-main))))
   `(erc-nick-msg-face ((t (:foreground ,fg-main))))
   `(erc-nick-prefix-face ((t (:foreground ,fg-main))))
   `(erc-notice-face ((t (:foreground ,fg-main))))
   `(erc-prompt-face ((t (:foreground ,gold :weight semibold))))

   ;; Built-in: eshell/em-ls.el.gz
   `(eshell-ls-archive ((t (:foreground ,fg-main))))
   `(eshell-ls-backup ((t (:foreground ,fg-main))))
   `(eshell-ls-clutter ((t (:foreground ,fg-main))))
   `(eshell-ls-directory ((t (:foreground ,navy :weight semibold))))
   `(eshell-ls-executable ((t (:foreground ,fg-main))))
   `(eshell-ls-missing ((t (:foreground ,fg-main))))
   `(eshell-ls-product ((t (:foreground ,fg-main))))
   `(eshell-ls-readonly ((t (:foreground ,fg-main))))
   `(eshell-ls-special ((t (:foreground ,fg-main))))
   `(eshell-ls-symlink ((t (:foreground ,water))))
   `(eshell-ls-unreadable ((t (:foreground ,fg-main))))

   ;; Built-in: eshell/em-prompt.el.gz
   `(eshell-prompt ((t (:foreground ,gold :weight semibold))))

   ;; Built-in: faces.el.gz
   `(bold ((t (:weight bold))))
   `(bold-italic ((t (:weight bold :slant italic))))
   `(border ((t (:background ,border))))
   `(child-frame-border ((t (:background ,border))))
   `(cursor ((t (:foreground ,bg-main :background ,gold))))
   `(error ((t (:foreground ,red-dark))))
   `(escape-glyph ((t (:foreground ,ochre))))
   `(fill-column-indicator ((t (:foreground ,fg-main))))
   `(fixed-pitch ((t (:foreground ,fg-main :background ,bg-main))))
   `(fixed-pitch-serif ((t (:foreground ,fg-main :background ,bg-main))))
   `(fringe ((t (:foreground ,border :background ,bg-main))))
   `(glyphless-char ((t (:foreground ,fg-main))))
   `(header-line ((t (:foreground ,navy :background ,bg-dim :box (:line-width -1 :color ,border) :weight semibold))))
   `(header-line-highlight ((t (:foreground ,navy :weight semibold))))
   `(help-argument-name ((t (:foreground ,navy :weight semibold))))
   `(help-key-binding ((t (:foreground ,gold :weight semibold))))
   `(highlight ((t (:foreground ,fg-main :background ,bg-active :extend t))))
   `(homoglyph ((t (:foreground ,fg-main))))
   `(internal-border ((t (:background ,bg-dim))))
   `(italic ((t (:slant italic))))
   `(line-number ((t (:foreground ,fg-dim :background ,bg-main))))
   `(line-number-current-line ((t (:foreground ,gold-dark :background ,bg-active :weight bold))))
   `(line-number-major-tick ((t (:foreground ,fg-dim :background ,bg-main))))
   `(line-number-minor-tick ((t (:foreground ,fg-dim :background ,bg-main))))
   `(link ((t (:foreground ,water))))
   `(link-visited ((t (:foreground ,water))))
   `(menu ((t (:foreground ,fg-main :background ,bg-dim))))
   `(minibuffer-prompt ((t (:foreground ,gold :weight semibold))))
   `(mode-line ((t (:foreground ,navy-dark :background ,mode-line :box (:line-width 1 :color ,gold-dark) :weight semibold))))
   `(mode-line-active ((t (:foreground ,navy-dark :background ,mode-line :box (:line-width 1 :color ,gold-dark) :weight semibold))))
   `(mode-line-buffer-id ((t (:foreground ,navy-dark :weight semibold))))
   `(mode-line-emphasis ((t (:foreground ,navy-dark :weight semibold))))
   `(mode-line-highlight ((t (:foreground ,navy-dark :weight semibold))))
   `(mode-line-inactive ((t (:foreground ,fg-dim :background ,mode-line-dim :box (:line-width 1 :color ,border)))))
   `(mouse ((t (:foreground ,bg-main :background ,gold))))
   `(nobreak-hyphen ((t (:foreground ,fg-main))))
   `(nobreak-space ((t (:foreground ,fg-main))))
   `(read-multiple-choice-face ((t (:foreground ,gold :weight semibold))))
   `(region ((t (:foreground ,fg-main :background ,bg-region :extend t))))
   `(scroll-bar ((t (:foreground ,fg-main :background ,bg-dim))))
   `(secondary-selection ((t (:foreground ,fg-main :background ,bg-lavender :extend t))))
   `(shadow ((t (:foreground ,fg-dim))))
   `(show-paren-match ((t (:foreground ,violet :background ,bg-lavender :weight bold))))
   `(show-paren-match-expression ((t (:foreground ,violet :background ,bg-lavender :weight bold))))
   `(show-paren-mismatch ((t (:foreground ,bg-main :background ,red-dark :weight bold))))
   `(success ((t (:foreground ,water-dark :weight semibold))))
   `(tab-bar ((t (:foreground ,navy-dark :background ,mode-line :weight semibold))))
   `(tab-line ((t (:foreground ,navy :background ,bg-dim :weight semibold))))
   `(tool-bar ((t (:foreground ,fg-main :background ,bg-dim))))
   `(trailing-whitespace ((t (:foreground ,red-dark))))
   `(tty-menu-disabled-face ((t (:foreground ,fg-main :background ,bg-dim))))
   `(tty-menu-enabled-face ((t (:foreground ,fg-main :background ,bg-dim))))
   `(tty-menu-selected-face ((t (:foreground ,fg-main :background ,bg-dim))))
   `(underline ((t (:underline t))))
   `(variable-pitch ((t (:foreground ,fg-main :background ,bg-main))))
   `(variable-pitch-text ((t (:foreground ,fg-main :background ,bg-main))))
   `(vertical-border ((t (:foreground ,border :background ,bg-main))))
   `(warning ((t (:foreground ,orange :weight semibold))))
   `(window-divider ((t (:foreground ,bg-dim :background ,bg-dim))))
   `(window-divider-first-pixel ((t (:foreground ,bg-dim :background ,bg-dim))))
   `(window-divider-last-pixel ((t (:foreground ,bg-dim :background ,bg-dim))))

   ;; Built-in: ffap.el.gz
   `(ffap ((t (:foreground ,fg-main))))

   ;; Built-in: font-lock.el.gz
   `(font-lock-bracket-face ((t (:foreground ,navy :weight semibold))))
   `(font-lock-builtin-face ((t (:foreground ,gold :weight semibold))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,fg-dim))))
   `(font-lock-comment-face ((t (:foreground ,fg-dim))))
   `(font-lock-constant-face ((t (:foreground ,pink))))
   `(font-lock-delimiter-face ((t (:foreground ,lavender :weight semibold))))
   `(font-lock-doc-face ((t (:foreground ,red-dark))))
   `(font-lock-doc-markup-face ((t (:foreground ,violet))))
   `(font-lock-escape-face ((t (:foreground ,ochre))))
   `(font-lock-function-call-face ((t (:foreground ,water))))
   `(font-lock-function-name-face ((t (:foreground ,navy :weight semibold))))
   `(font-lock-keyword-face ((t (:foreground ,lavender :weight semibold))))
   `(font-lock-misc-punctuation-face ((t (:foreground ,ochre))))
   `(font-lock-negation-char-face ((t (:foreground ,ochre))))
   `(font-lock-number-face ((t (:foreground ,pink))))
   `(font-lock-operator-face ((t (:foreground ,ochre))))
   `(font-lock-preprocessor-face ((t (:foreground ,gold :weight semibold))))
   `(font-lock-property-name-face ((t (:foreground ,gold :weight semibold))))
   `(font-lock-property-use-face ((t (:foreground ,gold :weight semibold))))
   `(font-lock-punctuation-face ((t (:foreground ,lavender :weight semibold))))
   `(font-lock-regexp-face ((t (:foreground ,lavender :weight semibold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,ochre))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,ochre))))
   `(font-lock-string-face ((t (:foreground ,red-dark))))
   `(font-lock-type-face ((t (:foreground ,navy :weight semibold))))
   `(font-lock-variable-name-face ((t (:foreground ,gold :weight semibold))))
   `(font-lock-variable-use-face ((t (:foreground ,gold :weight semibold))))
   `(font-lock-warning-face ((t (:foreground ,red-dark))))

   ;; Built-in: generic-x.el.gz
   `(show-tabs-space ((t (:foreground ,fg-main))))
   `(show-tabs-tab ((t (:foreground ,fg-main))))

   ;; Built-in: gnus/gnus-art.el.gz
   `(gnus-button ((t (:foreground ,water-dark :underline t))))
   `(gnus-emphasis-bold ((t (:foreground ,fg-main :weight bold))))
   `(gnus-emphasis-bold-italic ((t (:foreground ,fg-main :weight bold :slant italic))))
   `(gnus-emphasis-highlight-words ((t (:foreground ,navy-dark :background ,bg-search :weight semibold))))
   `(gnus-emphasis-italic ((t (:foreground ,fg-main :slant italic))))
   `(gnus-emphasis-strikethru ((t (:foreground ,fg-dim :strike-through t))))
   `(gnus-emphasis-underline ((t (:foreground ,fg-main :underline t))))
   `(gnus-emphasis-underline-bold ((t (:foreground ,fg-main :underline t :weight bold))))
   `(gnus-emphasis-underline-bold-italic ((t (:foreground ,fg-main :underline t :weight bold :slant italic))))
   `(gnus-emphasis-underline-italic ((t (:foreground ,fg-main :underline t :slant italic))))
   `(gnus-header ((t (:foreground ,fg-main))))
   `(gnus-header-content ((t (:foreground ,fg-dim))))
   `(gnus-header-from ((t (:foreground ,water-dark :weight semibold))))
   `(gnus-header-name ((t (:foreground ,gold-dark :weight semibold))))
   `(gnus-header-newsgroups ((t (:foreground ,lavender :weight semibold))))
   `(gnus-header-subject ((t (:foreground ,navy-dark :weight bold))))
   `(gnus-signature ((t (:foreground ,fg-dim :slant italic))))

   ;; Built-in: gnus/gnus-bookmark.el.gz
   `(gnus-bookmark-menu-heading ((t (:foreground ,gold-dark :weight bold))))

   ;; Built-in: gnus/gnus-cite.el.gz
   `(gnus-cite-1 ((t (:foreground ,fg-dim :slant italic))))
   `(gnus-cite-10 ((t (:foreground ,water-dark :slant italic))))
   `(gnus-cite-11 ((t (:foreground ,red-dark :slant italic))))
   `(gnus-cite-2 ((t (:foreground ,water :slant italic))))
   `(gnus-cite-3 ((t (:foreground ,lavender :slant italic))))
   `(gnus-cite-4 ((t (:foreground ,gold-dark :slant italic))))
   `(gnus-cite-5 ((t (:foreground ,pink :slant italic))))
   `(gnus-cite-6 ((t (:foreground ,navy :slant italic))))
   `(gnus-cite-7 ((t (:foreground ,orange :slant italic))))
   `(gnus-cite-8 ((t (:foreground ,violet :slant italic))))
   `(gnus-cite-9 ((t (:foreground ,silver :slant italic))))
   `(gnus-cite-attribution ((t (:foreground ,gold-dark :slant italic))))

   ;; Built-in: gnus/gnus-fun.el.gz
   `(gnus-x-face ((t (:foreground ,fg-main))))

   ;; Built-in: gnus/gnus-srvr.el.gz
   `(gnus-server-agent ((t (:foreground ,silver))))
   `(gnus-server-closed ((t (:foreground ,fg-dim))))
   `(gnus-server-cloud ((t (:foreground ,lavender))))
   `(gnus-server-cloud-host ((t (:foreground ,violet :weight semibold))))
   `(gnus-server-denied ((t (:foreground ,red-dark :weight bold))))
   `(gnus-server-offline ((t (:foreground ,ochre))))
   `(gnus-server-opened ((t (:foreground ,water-dark :weight semibold))))

   ;; Built-in: gnus/gnus.el.gz
   `(gnus-group-mail-1 ((t (:foreground ,red-dark :weight semibold))))
   `(gnus-group-mail-1-empty ((t (:foreground ,red-dark :weight normal :slant italic))))
   `(gnus-group-mail-2 ((t (:foreground ,ochre :weight semibold))))
   `(gnus-group-mail-2-empty ((t (:foreground ,ochre :weight normal :slant italic))))
   `(gnus-group-mail-3 ((t (:foreground ,navy :weight semibold))))
   `(gnus-group-mail-3-empty ((t (:foreground ,navy :weight normal :slant italic))))
   `(gnus-group-mail-low ((t (:foreground ,fg-dim :weight semibold))))
   `(gnus-group-mail-low-empty ((t (:foreground ,fg-dim :weight normal :slant italic))))
   `(gnus-group-news-1 ((t (:foreground ,navy-dark :weight semibold))))
   `(gnus-group-news-1-empty ((t (:foreground ,navy-dark :weight normal :slant italic))))
   `(gnus-group-news-2 ((t (:foreground ,water-dark :weight semibold))))
   `(gnus-group-news-2-empty ((t (:foreground ,water-dark :weight normal :slant italic))))
   `(gnus-group-news-3 ((t (:foreground ,lavender :weight semibold))))
   `(gnus-group-news-3-empty ((t (:foreground ,lavender :weight normal :slant italic))))
   `(gnus-group-news-4 ((t (:foreground ,violet :weight semibold))))
   `(gnus-group-news-4-empty ((t (:foreground ,violet :weight normal :slant italic))))
   `(gnus-group-news-5 ((t (:foreground ,gold-dark :weight semibold))))
   `(gnus-group-news-5-empty ((t (:foreground ,gold-dark :weight normal :slant italic))))
   `(gnus-group-news-6 ((t (:foreground ,pink :weight semibold))))
   `(gnus-group-news-6-empty ((t (:foreground ,pink :weight normal :slant italic))))
   `(gnus-group-news-low ((t (:foreground ,fg-dim :weight semibold))))
   `(gnus-group-news-low-empty ((t (:foreground ,fg-dim :weight normal :slant italic))))
   `(gnus-splash ((t (:foreground ,gold-dark :weight bold :height 1.2))))
   `(gnus-summary-cancelled ((t (:foreground ,red-dark :strike-through t))))
   `(gnus-summary-high-ancient ((t (:foreground ,fg-dim :weight semibold :slant italic))))
   `(gnus-summary-high-read ((t (:foreground ,navy :weight semibold))))
   `(gnus-summary-high-ticked ((t (:foreground ,red-dark :weight semibold))))
   `(gnus-summary-high-undownloaded ((t (:foreground ,ochre :weight semibold))))
   `(gnus-summary-high-unread ((t (:foreground ,navy-dark :weight semibold))))
   `(gnus-summary-low-ancient ((t (:foreground ,fg-dim :slant italic))))
   `(gnus-summary-low-read ((t (:foreground ,fg-main))))
   `(gnus-summary-low-ticked ((t (:foreground ,red :weight semibold))))
   `(gnus-summary-low-undownloaded ((t (:foreground ,gold))))
   `(gnus-summary-low-unread ((t (:foreground ,water-dark))))
   `(gnus-summary-normal-ancient ((t (:foreground ,fg-dim :slant italic))))
   `(gnus-summary-normal-read ((t (:foreground ,fg-main))))
   `(gnus-summary-normal-ticked ((t (:foreground ,red-dark :weight semibold))))
   `(gnus-summary-normal-undownloaded ((t (:foreground ,ochre))))
   `(gnus-summary-normal-unread ((t (:foreground ,navy))))
   `(gnus-summary-selected ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))

   ;; Built-in: gnus/message.el.gz
   `(message-cited-text ((t (:foreground ,red-dark))))
   `(message-cited-text-1 ((t (:foreground ,fg-dim))))
   `(message-cited-text-2 ((t (:foreground ,red-dark))))
   `(message-cited-text-3 ((t (:foreground ,red-dark))))
   `(message-cited-text-4 ((t (:foreground ,red-dark))))
   `(message-header-cc ((t (:foreground ,navy :weight semibold))))
   `(message-header-name ((t (:foreground ,navy :weight semibold))))
   `(message-header-newsgroups ((t (:foreground ,navy :weight semibold))))
   `(message-header-other ((t (:foreground ,navy :weight semibold))))
   `(message-header-subject ((t (:foreground ,navy :weight semibold))))
   `(message-header-to ((t (:foreground ,navy :weight semibold))))
   `(message-header-xheader ((t (:foreground ,navy :weight semibold))))
   `(message-mml ((t (:foreground ,fg-main))))
   `(message-separator ((t (:foreground ,fg-main))))
   `(message-signature-separator ((t (:foreground ,fg-main))))

   ;; Built-in: gnus/mm-decode.el.gz
   `(mm-command-output ((t (:foreground ,gold :weight semibold))))

   ;; Built-in: gnus/mm-uu.el.gz
   `(mm-uu-extract ((t (:foreground ,fg-main))))

   ;; Built-in: gnus/spam.el.gz
   `(spam ((t (:foreground ,fg-main))))

   ;; Built-in: help.el.gz
   `(help-for-help-header ((t (:foreground ,navy :weight semibold))))

   ;; Built-in: hexl.el.gz
   `(hexl-address-region ((t (:foreground ,fg-main))))
   `(hexl-ascii-region ((t (:foreground ,fg-main))))

   ;; Built-in: hi-lock.el.gz
   `(hi-aquamarine ((t (:foreground ,fg-main))))
   `(hi-black-b ((t (:foreground ,fg-main))))
   `(hi-black-hb ((t (:foreground ,fg-main))))
   `(hi-blue ((t (:foreground ,fg-main))))
   `(hi-blue-b ((t (:foreground ,fg-main))))
   `(hi-green ((t (:foreground ,fg-main))))
   `(hi-green-b ((t (:foreground ,fg-main))))
   `(hi-pink ((t (:foreground ,fg-main))))
   `(hi-red-b ((t (:foreground ,fg-main))))
   `(hi-salmon ((t (:foreground ,fg-main))))
   `(hi-yellow ((t (:foreground ,fg-main))))

   ;; Built-in: hilit-chg.el.gz
   `(highlight-changes ((t (:foreground ,fg-main))))
   `(highlight-changes-delete ((t (:foreground ,fg-main))))

   ;; Built-in: hl-line.el.gz
   `(hl-line ((t (:foreground ,fg-main :background ,bg-active :extend t))))

   ;; Built-in: ibuffer.el.gz
   `(ibuffer-locked-buffer ((t (:foreground ,fg-main))))

   ;; Built-in: icomplete.el.gz
   `(icomplete-first-match ((t (:foreground ,fg-main))))
   `(icomplete-section ((t (:foreground ,fg-dim :background ,bg-main :slant italic))))
   `(icomplete-selected-match ((t (:foreground ,navy-dark :background ,bg-region :weight semibold :extend t))))

   ;; Built-in: ido.el.gz
   `(ido-first-match ((t (:foreground ,fg-main))))
   `(ido-incomplete-regexp ((t (:foreground ,fg-main))))
   `(ido-indicator ((t (:foreground ,fg-main))))
   `(ido-only-match ((t (:foreground ,fg-main))))
   `(ido-subdir ((t (:foreground ,fg-main))))
   `(ido-virtual ((t (:foreground ,fg-main))))

   ;; Built-in: image/image-dired.el.gz
   `(image-dired-thumb-flagged ((t (:foreground ,fg-main))))
   `(image-dired-thumb-header-directory-name ((t (:foreground ,navy :weight semibold))))
   `(image-dired-thumb-header-file-name ((t (:foreground ,navy :weight semibold))))
   `(image-dired-thumb-header-file-size ((t (:foreground ,navy :weight semibold))))
   `(image-dired-thumb-header-image-count ((t (:foreground ,navy :weight semibold))))
   `(image-dired-thumb-mark ((t (:foreground ,fg-main))))

   ;; Built-in: info.el.gz
   `(Info-quoted ((t (:foreground ,red-dark))))
   `(info-header-node ((t (:foreground ,navy :weight semibold))))
   `(info-header-xref ((t (:foreground ,water))))
   `(info-index-match ((t (:foreground ,fg-main))))
   `(info-menu-header ((t (:foreground ,navy :weight semibold))))
   `(info-menu-star ((t (:foreground ,fg-main))))
   `(info-node ((t (:foreground ,fg-main))))
   `(info-title-1 ((t (:foreground ,navy :weight semibold))))
   `(info-title-2 ((t (:foreground ,navy :weight semibold))))
   `(info-title-3 ((t (:foreground ,navy :weight semibold))))
   `(info-title-4 ((t (:foreground ,navy :weight semibold))))
   `(info-xref ((t (:foreground ,water))))
   `(info-xref-visited ((t (:foreground ,water))))

   ;; Built-in: international/emoji.el.gz
   `(emoji ((t (:foreground ,fg-main))))
   `(emoji-list-header ((t (:foreground ,navy :weight semibold))))
   `(emoji-with-derivations ((t (:foreground ,fg-main))))

   ;; Built-in: international/mule-cmds.el.gz
   `(confusingly-reordered ((t (:foreground ,fg-main))))

   ;; Built-in: international/textsec-check.el.gz
   `(textsec-suspicious ((t (:foreground ,fg-main))))

   ;; Built-in: isearch.el.gz
   `(isearch ((t (:foreground ,gold-dark :background ,bg-search :weight bold))))
   `(isearch-fail ((t (:foreground ,red-dark))))
   `(isearch-group-1 ((t (:foreground ,navy-dark :background ,bg-blue :weight bold))))
   `(isearch-group-2 ((t (:foreground ,navy-dark :background ,bg-blue :weight bold))))
   `(lazy-highlight ((t (:foreground ,gold-dark :background ,bg-search :weight bold))))

   ;; Built-in: kmacro.el.gz
   `(kmacro-menu-flagged ((t (:foreground ,lavender :weight semibold))))
   `(kmacro-menu-mark ((t (:foreground ,lavender :weight semibold))))
   `(kmacro-menu-marked ((t (:foreground ,lavender :weight semibold))))

   ;; Built-in: mail/rmail.el.gz
   `(rmail-header-name ((t (:foreground ,navy :weight semibold))))
   `(rmail-highlight ((t (:foreground ,fg-main))))

   ;; Built-in: man.el.gz
   `(Man-overstrike ((t (:foreground ,gold :weight semibold))))
   `(Man-reverse ((t (:foreground ,fg-main))))
   `(Man-underline ((t (:foreground ,fg-main))))

   ;; Built-in: mb-depth.el.gz
   `(minibuffer-depth-indicator ((t (:foreground ,fg-main))))

   ;; Built-in: mh-e/mh-e.el.gz
   `(mh-folder-address ((t (:foreground ,fg-main))))
   `(mh-folder-allowlisted ((t (:foreground ,fg-main))))
   `(mh-folder-blocklisted ((t (:foreground ,fg-main))))
   `(mh-folder-body ((t (:foreground ,fg-main))))
   `(mh-folder-cur-msg-number ((t (:foreground ,pink))))
   `(mh-folder-date ((t (:foreground ,pink))))
   `(mh-folder-deleted ((t (:foreground ,red-dark :background ,bg-red))))
   `(mh-folder-followup ((t (:foreground ,fg-main))))
   `(mh-folder-msg-number ((t (:foreground ,pink))))
   `(mh-folder-refiled ((t (:foreground ,fg-main))))
   `(mh-folder-sent-to-me-hint ((t (:foreground ,fg-main))))
   `(mh-folder-sent-to-me-sender ((t (:foreground ,fg-main))))
   `(mh-folder-subject ((t (:foreground ,fg-main))))
   `(mh-folder-tick ((t (:foreground ,fg-main))))
   `(mh-folder-to ((t (:foreground ,fg-main))))
   `(mh-letter-header-field ((t (:foreground ,navy :weight semibold))))
   `(mh-search-folder ((t (:foreground ,fg-main))))
   `(mh-show-cc ((t (:foreground ,fg-main))))
   `(mh-show-date ((t (:foreground ,pink))))
   `(mh-show-from ((t (:foreground ,fg-main))))
   `(mh-show-header ((t (:foreground ,navy :weight semibold))))
   `(mh-show-pgg-bad ((t (:foreground ,fg-main))))
   `(mh-show-pgg-good ((t (:foreground ,fg-main))))
   `(mh-show-pgg-unknown ((t (:foreground ,fg-main))))
   `(mh-show-signature ((t (:foreground ,fg-main))))
   `(mh-show-subject ((t (:foreground ,fg-main))))
   `(mh-show-to ((t (:foreground ,fg-main))))
   `(mh-show-xface ((t (:foreground ,fg-main))))
   `(mh-speedbar-folder ((t (:foreground ,fg-main))))
   `(mh-speedbar-folder-with-unseen-messages ((t (:foreground ,fg-main))))
   `(mh-speedbar-selected-folder ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(mh-speedbar-selected-folder-with-unseen-messages ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))

   ;; Built-in: minibuffer.el.gz
   `(completions-annotations ((t (:foreground ,fg-dim))))
   `(completions-common-part ((t (:foreground ,gold :weight semibold))))
   `(completions-first-difference ((t (:foreground ,water))))
   `(completions-group-separator ((t (:foreground ,border :background ,bg-main :strike-through ,border :extend t))))
   `(completions-group-title ((t (:foreground ,navy :background ,bg-dim :weight bold :extend t))))
   `(completions-highlight ((t (:foreground ,navy-dark :background ,bg-region :weight semibold :extend t))))

   ;; Built-in: mouse.el.gz
   `(mouse-drag-and-drop-region ((t (:foreground ,fg-main :background ,bg-lavender :extend t))))

   ;; Built-in: net/browse-url.el.gz
   `(browse-url-button ((t (:foreground ,water))))

   ;; Built-in: net/dictionary.el.gz
   `(dictionary-button-face ((t (:foreground ,water))))
   `(dictionary-reference-face ((t (:foreground ,fg-main))))
   `(dictionary-word-definition-face ((t (:foreground ,fg-main))))
   `(dictionary-word-entry-face ((t (:foreground ,fg-main))))

   ;; Built-in: net/eww.el.gz
   `(eww-form-checkbox ((t (:foreground ,fg-main))))
   `(eww-form-file ((t (:foreground ,fg-main))))
   `(eww-form-select ((t (:foreground ,fg-main))))
   `(eww-form-submit ((t (:foreground ,fg-main))))
   `(eww-form-text ((t (:foreground ,fg-main))))
   `(eww-form-textarea ((t (:foreground ,fg-main))))
   `(eww-invalid-certificate ((t (:foreground ,red-dark))))
   `(eww-valid-certificate ((t (:foreground ,fg-main))))

   ;; Built-in: net/newst-plainview.el.gz
   `(newsticker-date-face ((t (:foreground ,pink))))
   `(newsticker-default-face ((t (:foreground ,fg-main))))
   `(newsticker-immortal-item-face ((t (:foreground ,fg-main))))
   `(newsticker-new-item-face ((t (:foreground ,fg-main))))
   `(newsticker-obsolete-item-face ((t (:foreground ,fg-main))))
   `(newsticker-old-item-face ((t (:foreground ,fg-main))))
   `(newsticker-statistics-face ((t (:foreground ,fg-main))))

   ;; Built-in: net/newst-reader.el.gz
   `(newsticker-enclosure-face ((t (:foreground ,fg-main))))
   `(newsticker-extra-face ((t (:foreground ,fg-main))))
   `(newsticker-feed-face ((t (:foreground ,fg-main))))

   ;; Built-in: net/newst-treeview.el.gz
   `(newsticker-treeview-face ((t (:foreground ,fg-main))))
   `(newsticker-treeview-immortal-face ((t (:foreground ,fg-main))))
   `(newsticker-treeview-new-face ((t (:foreground ,fg-main))))
   `(newsticker-treeview-obsolete-face ((t (:foreground ,fg-main))))
   `(newsticker-treeview-old-face ((t (:foreground ,fg-main))))
   `(newsticker-treeview-selection-face ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))

   ;; Built-in: net/rcirc.el.gz
   `(rcirc-bridged-nick ((t (:foreground ,fg-main))))
   `(rcirc-bright-nick ((t (:foreground ,fg-main))))
   `(rcirc-dim-nick ((t (:foreground ,fg-dim))))
   `(rcirc-keyword ((t (:foreground ,lavender :weight semibold))))
   `(rcirc-monospace-text ((t (:foreground ,fg-main))))
   `(rcirc-my-nick ((t (:foreground ,fg-main))))
   `(rcirc-nick-in-message ((t (:foreground ,fg-main))))
   `(rcirc-nick-in-message-full-line ((t (:foreground ,fg-main))))
   `(rcirc-other-nick ((t (:foreground ,fg-main))))
   `(rcirc-prompt ((t (:foreground ,gold :weight semibold))))
   `(rcirc-server ((t (:foreground ,fg-main))))
   `(rcirc-server-prefix ((t (:foreground ,fg-main))))
   `(rcirc-timestamp ((t (:foreground ,pink))))
   `(rcirc-track-keyword ((t (:foreground ,lavender :weight semibold))))
   `(rcirc-track-nick ((t (:foreground ,fg-main))))
   `(rcirc-url ((t (:foreground ,water))))

   ;; Built-in: net/shr.el.gz
   `(shr-abbreviation ((t (:foreground ,fg-main))))
   `(shr-code ((t (:foreground ,fg-main))))
   `(shr-h1 ((t (:foreground ,fg-main))))
   `(shr-h2 ((t (:foreground ,fg-main))))
   `(shr-h3 ((t (:foreground ,fg-main))))
   `(shr-h4 ((t (:foreground ,fg-main))))
   `(shr-h5 ((t (:foreground ,fg-main))))
   `(shr-h6 ((t (:foreground ,fg-main))))
   `(shr-link ((t (:foreground ,water))))
   `(shr-mark ((t (:foreground ,fg-main))))
   `(shr-selected-link ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(shr-sliced-image ((t (:foreground ,fg-main))))
   `(shr-strike-through ((t (:foreground ,fg-main))))
   `(shr-sup ((t (:foreground ,fg-main))))
   `(shr-text ((t (:foreground ,fg-main))))

   ;; Built-in: net/sieve-mode.el.gz
   `(sieve-action-commands ((t (:foreground ,gold :weight semibold))))
   `(sieve-control-commands ((t (:foreground ,gold :weight semibold))))
   `(sieve-tagged-arguments ((t (:foreground ,fg-main))))
   `(sieve-test-commands ((t (:foreground ,gold :weight semibold))))

   ;; Built-in: nxml/nxml-mode.el.gz
   `(nxml-attribute-colon ((t (:foreground ,fg-main))))
   `(nxml-attribute-local-name ((t (:foreground ,fg-main))))
   `(nxml-attribute-prefix ((t (:foreground ,fg-main))))
   `(nxml-attribute-value ((t (:foreground ,pink))))
   `(nxml-attribute-value-delimiter ((t (:foreground ,pink))))
   `(nxml-cdata-section-CDATA ((t (:foreground ,navy :weight semibold))))
   `(nxml-cdata-section-content ((t (:foreground ,navy :weight semibold))))
   `(nxml-cdata-section-delimiter ((t (:foreground ,navy :weight semibold))))
   `(nxml-char-ref-delimiter ((t (:foreground ,fg-main))))
   `(nxml-char-ref-number ((t (:foreground ,pink))))
   `(nxml-delimited-data ((t (:foreground ,fg-main))))
   `(nxml-delimiter ((t (:foreground ,fg-main))))
   `(nxml-element-colon ((t (:foreground ,fg-main))))
   `(nxml-element-local-name ((t (:foreground ,fg-main))))
   `(nxml-element-prefix ((t (:foreground ,fg-main))))
   `(nxml-entity-ref-delimiter ((t (:foreground ,fg-main))))
   `(nxml-entity-ref-name ((t (:foreground ,fg-main))))
   `(nxml-glyph ((t (:foreground ,fg-main))))
   `(nxml-hash ((t (:foreground ,fg-main))))
   `(nxml-markup-declaration-delimiter ((t (:foreground ,fg-main))))
   `(nxml-name ((t (:foreground ,fg-main))))
   `(nxml-namespace-attribute-colon ((t (:foreground ,violet))))
   `(nxml-namespace-attribute-prefix ((t (:foreground ,violet))))
   `(nxml-namespace-attribute-xmlns ((t (:foreground ,violet))))
   `(nxml-processing-instruction-content ((t (:foreground ,fg-main))))
   `(nxml-processing-instruction-delimiter ((t (:foreground ,fg-main))))
   `(nxml-processing-instruction-target ((t (:foreground ,fg-main))))
   `(nxml-prolog-keyword ((t (:foreground ,lavender :weight semibold))))
   `(nxml-prolog-literal-content ((t (:foreground ,fg-main))))
   `(nxml-prolog-literal-delimiter ((t (:foreground ,fg-main))))
   `(nxml-ref ((t (:foreground ,fg-main))))
   `(nxml-tag-delimiter ((t (:foreground ,fg-main))))
   `(nxml-tag-slash ((t (:foreground ,fg-main))))
   `(nxml-text ((t (:foreground ,fg-main))))

   ;; Built-in: nxml/nxml-outln.el.gz
   `(nxml-heading ((t (:foreground ,navy :weight semibold))))
   `(nxml-outline-active-indicator ((t (:foreground ,fg-main))))
   `(nxml-outline-ellipsis ((t (:foreground ,fg-main))))
   `(nxml-outline-indicator ((t (:foreground ,fg-main))))

   ;; Built-in: nxml/rng-valid.el.gz
   `(rng-error ((t (:foreground ,red-dark))))

   ;; Built-in: obsolete/iswitchb.el.gz
   `(iswitchb-current-match ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(iswitchb-invalid-regexp ((t (:foreground ,red-dark))))
   `(iswitchb-single-match ((t (:foreground ,fg-main))))
   `(iswitchb-virtual-matches ((t (:foreground ,fg-main))))

   ;; Built-in: obsolete/landmark.el.gz
   `(landmark-font-lock-face-O ((t (:foreground ,fg-main))))
   `(landmark-font-lock-face-X ((t (:foreground ,fg-main))))

   ;; Built-in: obsolete/linum.el.gz
   `(linum ((t (:foreground ,fg-main))))

   ;; Built-in: org/org-faces.el.gz
   `(org-agenda-calendar-daterange ((t (:foreground ,pink))))
   `(org-agenda-calendar-event ((t (:foreground ,pink))))
   `(org-agenda-calendar-sexp ((t (:foreground ,pink))))
   `(org-agenda-clocking ((t (:foreground ,red-dark))))
   `(org-agenda-column-dateline ((t (:foreground ,pink))))
   `(org-agenda-current-time ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(org-agenda-date ((t (:foreground ,water))))
   `(org-agenda-date-today ((t (:foreground ,pink))))
   `(org-agenda-date-weekend ((t (:foreground ,orange :weight semibold))))
   `(org-agenda-date-weekend-today ((t (:foreground ,pink))))
   `(org-agenda-diary ((t (:foreground ,pink))))
   `(org-agenda-dimmed-todo-face ((t (:foreground ,fg-dim))))
   `(org-agenda-done ((t (:foreground ,water-dark :weight semibold))))
   `(org-agenda-filter-category ((t (:foreground ,fg-main))))
   `(org-agenda-filter-effort ((t (:foreground ,fg-main))))
   `(org-agenda-filter-regexp ((t (:foreground ,fg-main))))
   `(org-agenda-filter-tags ((t (:foreground ,fg-main))))
   `(org-agenda-restriction-lock ((t (:foreground ,fg-main))))
   `(org-agenda-structure ((t (:foreground ,water))))
   `(org-agenda-structure-filter ((t (:foreground ,fg-main))))
   `(org-agenda-structure-secondary ((t (:foreground ,water-dark :weight semibold))))
   `(org-archived ((t (:foreground ,fg-main))))
   `(org-block ((t (:foreground ,navy-dark :background ,bg-dim :extend t))))
   `(org-block-begin-line ((t (:foreground ,navy-dark :background ,bg-dim :extend t))))
   `(org-block-end-line ((t (:foreground ,navy-dark :background ,bg-dim :extend t))))
   `(org-checkbox ((t (:foreground ,fg-main))))
   `(org-checkbox-statistics-done ((t (:foreground ,water-dark :weight semibold))))
   `(org-checkbox-statistics-todo ((t (:foreground ,fg-main))))
   `(org-cite ((t (:foreground ,water))))
   `(org-cite-key ((t (:foreground ,red-dark))))
   `(org-clock-overlay ((t (:foreground ,fg-main))))
   `(org-code ((t (:foreground ,violet))))
   `(org-column ((t (:foreground ,fg-main))))
   `(org-column-title ((t (:foreground ,navy :weight semibold))))
   `(org-date ((t (:foreground ,pink))))
   `(org-date-selected ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(org-default ((t (:foreground ,fg-main))))
   `(org-dispatcher-highlight ((t (:foreground ,fg-main))))
   `(org-document-info ((t (:foreground ,red-dark))))
   `(org-document-info-keyword ((t (:foreground ,navy :weight semibold))))
   `(org-document-title ((t (:foreground ,gold-dark :weight bold :height 1.35))))
   `(org-done ((t (:foreground ,water-dark :weight semibold))))
   `(org-drawer ((t (:foreground ,fg-dim))))
   `(org-ellipsis ((t (:foreground ,fg-main))))
   `(org-footnote ((t (:foreground ,ochre))))
   `(org-formula ((t (:foreground ,fg-main))))
   `(org-headline-done ((t (:foreground ,water-dark :weight semibold))))
   `(org-headline-todo ((t (:foreground ,fg-main))))
   `(org-hide ((t (:foreground ,fg-main))))
   `(org-imminent-deadline ((t (:foreground ,fg-main))))
   `(org-inline-src-block ((t (:foreground ,fg-main))))
   `(org-latex-and-related ((t (:foreground ,fg-main))))
   `(org-level-1 ((t (:foreground ,navy :weight bold :height 1.18))))
   `(org-level-2 ((t (:foreground ,violet :weight bold :height 1.14))))
   `(org-level-3 ((t (:foreground ,pink :weight bold :height 1.1))))
   `(org-level-4 ((t (:foreground ,lavender :weight bold :height 1.07))))
   `(org-level-5 ((t (:foreground ,gold :weight bold))))
   `(org-level-6 ((t (:foreground ,water :weight bold))))
   `(org-level-7 ((t (:foreground ,red-dark :weight bold))))
   `(org-level-8 ((t (:foreground ,silver :weight bold))))
   `(org-link ((t (:foreground ,water))))
   `(org-list-dt ((t (:foreground ,fg-main))))
   `(org-macro ((t (:foreground ,ochre))))
   `(org-meta-line ((t (:foreground ,ochre))))
   `(org-mode-line-clock ((t (:foreground ,fg-main))))
   `(org-mode-line-clock-overrun ((t (:foreground ,fg-main))))
   `(org-priority ((t (:foreground ,gold :weight semibold))))
   `(org-property-value ((t (:foreground ,fg-dim))))
   `(org-quote ((t (:foreground ,navy-dark :background ,bg-dim :extend t))))
   `(org-scheduled ((t (:foreground ,water-dark :weight semibold))))
   `(org-scheduled-previously ((t (:foreground ,orange :weight semibold))))
   `(org-scheduled-today ((t (:foreground ,fg-main))))
   `(org-sexp-date ((t (:foreground ,pink))))
   `(org-special-keyword ((t (:foreground ,gold :weight semibold))))
   `(org-table ((t (:foreground ,navy-dark :background ,bg-dim :extend t))))
   `(org-table-header ((t (:foreground ,navy :weight semibold))))
   `(org-table-row ((t (:foreground ,fg-main))))
   `(org-tag ((t (:foreground ,gold :weight semibold))))
   `(org-tag-group ((t (:foreground ,fg-main))))
   `(org-target ((t (:foreground ,ochre))))
   `(org-time-grid ((t (:foreground ,pink))))
   `(org-todo ((t (:foreground ,lavender :weight semibold))))
   `(org-upcoming-deadline ((t (:foreground ,orange :weight semibold))))
   `(org-upcoming-distant-deadline ((t (:foreground ,fg-main))))
   `(org-verbatim ((t (:foreground ,violet))))
   `(org-verse ((t (:foreground ,fg-main))))
   `(org-warning ((t (:foreground ,red-dark))))

   ;; Built-in: org/org-habit.el.gz
   `(org-habit-alert-face ((t (:foreground ,fg-main))))
   `(org-habit-alert-future-face ((t (:foreground ,fg-main))))
   `(org-habit-clear-face ((t (:foreground ,fg-main))))
   `(org-habit-clear-future-face ((t (:foreground ,fg-main))))
   `(org-habit-overdue-face ((t (:foreground ,orange :weight semibold))))
   `(org-habit-overdue-future-face ((t (:foreground ,orange :weight semibold))))
   `(org-habit-ready-face ((t (:foreground ,fg-main))))
   `(org-habit-ready-future-face ((t (:foreground ,fg-main))))

   ;; Built-in: org/org-indent.el.gz
   `(org-indent ((t (:foreground ,fg-main))))

   ;; Built-in: org/org-inlinetask.el.gz
   `(org-inlinetask ((t (:foreground ,fg-main))))

   ;; Built-in: org/ox-beamer.el.gz
   `(org-beamer-tag ((t (:foreground ,fg-main))))

   ;; Built-in: outline.el.gz
   `(outline-1 ((t (:foreground ,navy :weight bold :height 1.18))))
   `(outline-2 ((t (:foreground ,violet :weight bold :height 1.14))))
   `(outline-3 ((t (:foreground ,pink :weight bold :height 1.1))))
   `(outline-4 ((t (:foreground ,lavender :weight bold :height 1.07))))
   `(outline-5 ((t (:foreground ,gold :weight bold))))
   `(outline-6 ((t (:foreground ,water :weight bold))))
   `(outline-7 ((t (:foreground ,red-dark :weight bold))))
   `(outline-8 ((t (:foreground ,silver :weight bold))))

   ;; Built-in: play/bubbles.el.gz
   `(bubbles--highlight-face ((t (:foreground ,fg-main))))

   ;; Built-in: play/gomoku.el.gz
   `(gomoku-O ((t (:foreground ,fg-main))))
   `(gomoku-X ((t (:foreground ,fg-main))))

   ;; Built-in: play/mpuz.el.gz
   `(mpuz-solved ((t (:foreground ,fg-main))))
   `(mpuz-text ((t (:foreground ,fg-main))))
   `(mpuz-trivial ((t (:foreground ,fg-main))))
   `(mpuz-unsolved ((t (:foreground ,fg-main))))

   ;; Built-in: proced.el.gz
   `(proced-cpu ((t (:foreground ,fg-main))))
   `(proced-emacs-pid ((t (:foreground ,fg-main))))
   `(proced-executable ((t (:foreground ,fg-main))))
   `(proced-interruptible-sleep-status-code ((t (:foreground ,fg-main))))
   `(proced-mark ((t (:foreground ,fg-main))))
   `(proced-marked ((t (:foreground ,fg-main))))
   `(proced-mem ((t (:foreground ,fg-main))))
   `(proced-memory-high-usage ((t (:foreground ,fg-main))))
   `(proced-memory-low-usage ((t (:foreground ,fg-main))))
   `(proced-memory-medium-usage ((t (:foreground ,fg-main))))
   `(proced-pgrp ((t (:foreground ,fg-main))))
   `(proced-pid ((t (:foreground ,fg-main))))
   `(proced-ppid ((t (:foreground ,fg-main))))
   `(proced-run-status-code ((t (:foreground ,fg-main))))
   `(proced-sess ((t (:foreground ,fg-main))))
   `(proced-session-leader-pid ((t (:foreground ,fg-main))))
   `(proced-sort-header ((t (:foreground ,navy :weight semibold))))
   `(proced-time-colon ((t (:foreground ,pink))))
   `(proced-uninterruptible-sleep-status-code ((t (:foreground ,fg-main))))
   `(proced-user ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/antlr-mode.el.gz
   `(antlr-default ((t (:foreground ,fg-main))))
   `(antlr-keyword ((t (:foreground ,lavender :weight semibold))))
   `(antlr-literal ((t (:foreground ,fg-main))))
   `(antlr-ruledef ((t (:foreground ,fg-main))))
   `(antlr-ruleref ((t (:foreground ,fg-main))))
   `(antlr-syntax ((t (:foreground ,fg-main))))
   `(antlr-tokendef ((t (:foreground ,fg-main))))
   `(antlr-tokenref ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/bat-mode.el.gz
   `(bat-label-face ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/cc-fonts.el.gz
   `(c-annotation-face ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/compile.el.gz
   `(compilation-column-number ((t (:foreground ,ochre))))
   `(compilation-error ((t (:foreground ,red-dark))))
   `(compilation-info ((t (:foreground ,water-dark :weight semibold))))
   `(compilation-line-number ((t (:foreground ,ochre))))
   `(compilation-mode-line-exit ((t (:foreground ,fg-main))))
   `(compilation-mode-line-fail ((t (:foreground ,red-dark))))
   `(compilation-mode-line-run ((t (:foreground ,fg-main))))
   `(compilation-warning ((t (:foreground ,orange :weight semibold))))

   ;; Built-in: progmodes/cperl-mode.el.gz
   `(cperl-array-face ((t (:foreground ,fg-main))))
   `(cperl-hash-face ((t (:foreground ,fg-main))))
   `(cperl-method-call ((t (:foreground ,water))))
   `(cperl-nonoverridable-face ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/ebrowse.el.gz
   `(ebrowse-default ((t (:foreground ,fg-main))))
   `(ebrowse-file-name ((t (:foreground ,navy :weight semibold))))
   `(ebrowse-member-attribute ((t (:foreground ,fg-main))))
   `(ebrowse-member-class ((t (:foreground ,violet))))
   `(ebrowse-progress ((t (:foreground ,fg-main))))
   `(ebrowse-root-class ((t (:foreground ,violet))))
   `(ebrowse-tree-mark ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/eglot.el.gz
   `(eglot-diagnostic-tag-deprecated-face ((t (:foreground ,fg-main))))
   `(eglot-diagnostic-tag-unnecessary-face ((t (:foreground ,red-dark))))
   `(eglot-highlight-symbol-face ((t (:foreground ,fg-main))))
   `(eglot-inlay-hint-face ((t (:foreground ,fg-main))))
   `(eglot-mode-line ((t (:foreground ,fg-main))))
   `(eglot-parameter-hint-face ((t (:foreground ,fg-main))))
   `(eglot-type-hint-face ((t (:foreground ,violet))))

   ;; Built-in: progmodes/elixir-ts-mode.el.gz
   `(elixir-ts-atom ((t (:foreground ,fg-main))))
   `(elixir-ts-attribute ((t (:foreground ,fg-main))))
   `(elixir-ts-comment-doc-attribute ((t (:foreground ,fg-dim))))
   `(elixir-ts-comment-doc-identifier ((t (:foreground ,fg-dim))))
   `(elixir-ts-keyword-key ((t (:foreground ,lavender :weight semibold))))
   `(elixir-ts-sigil-name ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/erts-mode.el.gz
   `(erts-mode-end-test ((t (:foreground ,fg-main))))
   `(erts-mode-specification-name ((t (:foreground ,fg-main))))
   `(erts-mode-specification-value ((t (:foreground ,pink))))
   `(erts-mode-start-test ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/flymake.el.gz
   `(flymake-end-of-line-diagnostics-face ((t (:foreground ,fg-main))))
   `(flymake-eol-information-face ((t (:foreground ,fg-main))))
   `(flymake-errline ((t (:foreground ,fg-main))))
   `(flymake-error ((t (:foreground ,red-dark))))
   `(flymake-error-echo ((t (:foreground ,red-dark))))
   `(flymake-error-echo-at-eol ((t (:foreground ,red-dark))))
   `(flymake-note ((t (:foreground ,water-dark :weight semibold))))
   `(flymake-note-echo ((t (:foreground ,fg-main))))
   `(flymake-note-echo-at-eol ((t (:foreground ,fg-main))))
   `(flymake-warning ((t (:foreground ,orange :weight semibold))))
   `(flymake-warning-echo ((t (:foreground ,orange :weight semibold))))
   `(flymake-warning-echo-at-eol ((t (:foreground ,orange :weight semibold))))
   `(flymake-warnline ((t (:foreground ,orange :weight semibold))))

   ;; Built-in: progmodes/gdb-mi.el.gz
   `(breakpoint-disabled ((t (:foreground ,red-dark))))
   `(breakpoint-enabled ((t (:foreground ,red-dark))))

   ;; Built-in: progmodes/grep.el.gz
   `(grep-heading ((t (:foreground ,navy :weight semibold))))

   ;; Built-in: progmodes/gud.el.gz
   `(gud-highlight-current-line-face ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))

   ;; Built-in: progmodes/hideif.el.gz
   `(hide-ifdef-shadow ((t (:foreground ,fg-dim))))

   ;; Built-in: progmodes/idlw-help.el.gz
   `(idlwave-help-link ((t (:foreground ,water))))

   ;; Built-in: progmodes/idlw-shell.el.gz
   `(idlwave-shell-bp ((t (:foreground ,fg-main))))
   `(idlwave-shell-disabled-bp ((t (:foreground ,fg-dim))))
   `(idlwave-shell-electric-stop-line ((t (:foreground ,fg-main))))
   `(idlwave-shell-pending-electric-stop ((t (:foreground ,gold-dark :background ,bg-active))))
   `(idlwave-shell-pending-stop ((t (:foreground ,gold-dark :background ,bg-active))))

   ;; Built-in: progmodes/ld-script.el.gz
   `(ld-script-location-counter ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/make-mode.el.gz
   `(makefile-makepp-perl ((t (:foreground ,fg-main))))
   `(makefile-shell ((t (:foreground ,fg-main))))
   `(makefile-space ((t (:foreground ,fg-main))))
   `(makefile-targets ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/octave.el.gz
   `(octave-function-comment-block ((t (:foreground ,fg-dim))))

   ;; Built-in: progmodes/perl-mode.el.gz
   `(perl-heredoc ((t (:foreground ,red-dark))))
   `(perl-non-scalar-variable ((t (:foreground ,pink))))

   ;; Built-in: progmodes/prolog.el.gz
   `(prolog-builtin-face ((t (:foreground ,fg-main))))
   `(prolog-exception-face ((t (:foreground ,fg-main))))
   `(prolog-exit-face ((t (:foreground ,fg-main))))
   `(prolog-redo-face ((t (:foreground ,fg-main))))
   `(prolog-warning-face ((t (:foreground ,orange :weight semibold))))

   ;; Built-in: progmodes/sh-script.el.gz
   `(sh-escaped-newline ((t (:foreground ,fg-main))))
   `(sh-heredoc ((t (:foreground ,red-dark))))
   `(sh-quoted-exec ((t (:foreground ,red-dark))))

   ;; Built-in: progmodes/tcl.el.gz
   `(tcl-escaped-newline ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/typescript-ts-mode.el.gz
   `(typescript-ts-jsx-attribute-face ((t (:foreground ,violet))))
   `(typescript-ts-jsx-tag-face ((t (:foreground ,violet))))

   ;; Built-in: progmodes/vera-mode.el.gz
   `(vera-font-lock-function ((t (:foreground ,water))))
   `(vera-font-lock-interface ((t (:foreground ,violet))))
   `(vera-font-lock-number ((t (:foreground ,pink))))

   ;; Built-in: progmodes/verilog-mode.el.gz
   `(verilog-font-lock-ams-face ((t (:foreground ,fg-main))))
   `(verilog-font-lock-grouping-keywords-face ((t (:foreground ,lavender :weight semibold))))
   `(verilog-font-lock-p1800-face ((t (:foreground ,fg-main))))
   `(verilog-font-lock-translate-off-face ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/vhdl-mode.el.gz
   `(vhdl-font-lock-attribute-face ((t (:foreground ,fg-main))))
   `(vhdl-font-lock-directive-face ((t (:foreground ,lavender :weight semibold))))
   `(vhdl-font-lock-enumvalue-face ((t (:foreground ,pink))))
   `(vhdl-font-lock-function-face ((t (:foreground ,water))))
   `(vhdl-font-lock-generic-/constant-face ((t (:foreground ,pink))))
   `(vhdl-font-lock-prompt-face ((t (:foreground ,gold :weight semibold))))
   `(vhdl-font-lock-reserved-words-face ((t (:foreground ,fg-main))))
   `(vhdl-font-lock-translate-off-face ((t (:foreground ,fg-main))))
   `(vhdl-font-lock-type-face ((t (:foreground ,violet))))
   `(vhdl-font-lock-variable-face ((t (:foreground ,pink))))
   `(vhdl-speedbar-architecture-face ((t (:foreground ,fg-main))))
   `(vhdl-speedbar-architecture-selected-face ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(vhdl-speedbar-configuration-face ((t (:foreground ,fg-main))))
   `(vhdl-speedbar-configuration-selected-face ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(vhdl-speedbar-entity-face ((t (:foreground ,fg-main))))
   `(vhdl-speedbar-entity-selected-face ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(vhdl-speedbar-instantiation-face ((t (:foreground ,fg-main))))
   `(vhdl-speedbar-instantiation-selected-face ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(vhdl-speedbar-library-face ((t (:foreground ,fg-main))))
   `(vhdl-speedbar-package-face ((t (:foreground ,fg-main))))
   `(vhdl-speedbar-package-selected-face ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(vhdl-speedbar-subprogram-face ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/which-func.el.gz
   `(which-func ((t (:foreground ,fg-main))))

   ;; Built-in: progmodes/xref.el.gz
   `(xref-file-header ((t (:foreground ,water))))
   `(xref-line-number ((t (:foreground ,water))))
   `(xref-match ((t (:foreground ,water))))

   ;; Built-in: rect.el.gz
   `(rectangle-preview ((t (:foreground ,fg-main))))

   ;; Built-in: replace.el.gz
   `(match ((t (:foreground ,gold-dark :background ,bg-search :weight bold))))
   `(query-replace ((t (:foreground ,gold-dark :background ,bg-search :weight bold))))

   ;; Built-in: rfn-eshadow.el.gz
   `(file-name-shadow ((t (:foreground ,fg-dim))))

   ;; Built-in: ruler-mode.el.gz
   `(ruler-mode-column-number ((t (:foreground ,pink))))
   `(ruler-mode-comment-column ((t (:foreground ,fg-dim))))
   `(ruler-mode-current-column ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(ruler-mode-default ((t (:foreground ,fg-main))))
   `(ruler-mode-fill-column ((t (:foreground ,fg-main))))
   `(ruler-mode-fringes ((t (:foreground ,fg-main))))
   `(ruler-mode-goal-column ((t (:foreground ,fg-main))))
   `(ruler-mode-margins ((t (:foreground ,fg-main))))
   `(ruler-mode-pad ((t (:foreground ,fg-main))))
   `(ruler-mode-tab-stop ((t (:foreground ,fg-main))))

   ;; Built-in: shell.el.gz
   `(shell-highlight-undef-alias-face ((t (:foreground ,fg-main))))
   `(shell-highlight-undef-defined-face ((t (:foreground ,fg-main))))
   `(shell-highlight-undef-undefined-face ((t (:foreground ,fg-main))))

   ;; Built-in: simple.el.gz
   `(blink-matching-paren-offscreen ((t (:foreground ,water))))
   `(next-error ((t (:foreground ,gold-dark :background ,bg-search :weight bold))))
   `(next-error-message ((t (:foreground ,gold-dark :background ,bg-search :weight bold))))
   `(separator-line ((t (:foreground ,border :background ,bg-main))))

   ;; Built-in: so-long.el.gz
   `(so-long-mode-line-active ((t (:foreground ,fg-main))))
   `(so-long-mode-line-inactive ((t (:foreground ,fg-dim))))

   ;; Built-in: speedbar.el.gz
   `(speedbar-button-face ((t (:foreground ,water))))
   `(speedbar-directory-face ((t (:foreground ,navy :weight semibold))))
   `(speedbar-file-face ((t (:foreground ,fg-main))))
   `(speedbar-highlight-face ((t (:foreground ,fg-main))))
   `(speedbar-selected-face ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(speedbar-separator-face ((t (:foreground ,fg-main))))
   `(speedbar-tag-face ((t (:foreground ,fg-main))))

   ;; Built-in: strokes.el.gz
   `(strokes-char ((t (:foreground ,fg-main))))

   ;; Built-in: tab-bar.el.gz
   `(tab-bar-tab ((t (:foreground ,navy-dark :background ,mode-line :weight semibold))))
   `(tab-bar-tab-group-current ((t (:foreground ,navy-dark :background ,mode-line :weight semibold))))
   `(tab-bar-tab-group-inactive ((t (:foreground ,fg-dim :background ,mode-line-dim))))
   `(tab-bar-tab-inactive ((t (:foreground ,fg-dim :background ,mode-line-dim))))
   `(tab-bar-tab-ungrouped ((t (:foreground ,navy-dark :background ,mode-line :weight semibold))))

   ;; Built-in: tab-line.el.gz
   `(tab-line-close-highlight ((t (:foreground ,fg-dim :background ,mode-line-dim))))
   `(tab-line-highlight ((t (:foreground ,navy :background ,bg-dim :weight semibold))))
   `(tab-line-tab ((t (:foreground ,navy :background ,bg-dim :weight semibold))))
   `(tab-line-tab-current ((t (:foreground ,navy :background ,bg-dim :weight semibold))))
   `(tab-line-tab-group ((t (:foreground ,navy :background ,bg-dim :weight semibold))))
   `(tab-line-tab-inactive ((t (:foreground ,fg-dim :background ,mode-line-dim))))
   `(tab-line-tab-inactive-alternate ((t (:foreground ,fg-dim :background ,mode-line-dim))))
   `(tab-line-tab-modified ((t (:foreground ,navy :background ,bg-dim :weight semibold))))
   `(tab-line-tab-special ((t (:foreground ,navy :background ,bg-dim :weight semibold))))

   ;; Built-in: term.el.gz
   `(term ((t (:foreground ,fg-main))))
   `(term-bold ((t (:foreground ,fg-main))))
   `(term-color-black ((t (:foreground ,fg-main))))
   `(term-color-blue ((t (:foreground ,fg-main))))
   `(term-color-bright-black ((t (:foreground ,fg-main))))
   `(term-color-bright-blue ((t (:foreground ,fg-main))))
   `(term-color-bright-cyan ((t (:foreground ,fg-main))))
   `(term-color-bright-green ((t (:foreground ,fg-main))))
   `(term-color-bright-magenta ((t (:foreground ,fg-main))))
   `(term-color-bright-red ((t (:foreground ,fg-main))))
   `(term-color-bright-white ((t (:foreground ,fg-main))))
   `(term-color-bright-yellow ((t (:foreground ,fg-main))))
   `(term-color-cyan ((t (:foreground ,fg-main))))
   `(term-color-green ((t (:foreground ,fg-main))))
   `(term-color-magenta ((t (:foreground ,fg-main))))
   `(term-color-red ((t (:foreground ,fg-main))))
   `(term-color-white ((t (:foreground ,fg-main))))
   `(term-color-yellow ((t (:foreground ,fg-main))))
   `(term-faint ((t (:foreground ,fg-dim))))
   `(term-fast-blink ((t (:foreground ,water))))
   `(term-italic ((t (:foreground ,fg-main))))
   `(term-slow-blink ((t (:foreground ,water))))
   `(term-underline ((t (:foreground ,fg-main))))

   ;; Built-in: term/ns-win.el.gz
   `(ns-working-text-face ((t (:foreground ,fg-main))))

   ;; Built-in: term/pc-win.el.gz
   `(msdos-menu-active-face ((t (:foreground ,fg-main))))
   `(msdos-menu-passive-face ((t (:foreground ,fg-main))))
   `(msdos-menu-select-face ((t (:foreground ,fg-main))))

   ;; Built-in: textmodes/css-mode.el.gz
   `(css-property ((t (:foreground ,pink))))
   `(css-proprietary-property ((t (:foreground ,pink))))
   `(css-selector ((t (:foreground ,fg-main))))

   ;; Built-in: textmodes/dns-mode.el.gz
   `(dns-mode-bad-control-entity ((t (:foreground ,fg-main))))
   `(dns-mode-class ((t (:foreground ,violet))))
   `(dns-mode-control-entity ((t (:foreground ,fg-main))))
   `(dns-mode-type ((t (:foreground ,violet))))

   ;; Built-in: textmodes/emacs-authors-mode.el.gz
   `(emacs-authors-author ((t (:foreground ,fg-main))))
   `(emacs-authors-default ((t (:foreground ,fg-main))))
   `(emacs-authors-descriptor ((t (:foreground ,fg-main))))
   `(emacs-authors-other-files ((t (:foreground ,fg-main))))
   `(etc-authors-author ((t (:foreground ,fg-main))))
   `(etc-authors-default ((t (:foreground ,fg-main))))
   `(etc-authors-descriptor ((t (:foreground ,fg-main))))
   `(etc-authors-other-files ((t (:foreground ,fg-main))))

   ;; Built-in: textmodes/emacs-news-mode.el.gz
   `(emacs-news-does-not-need-documentation ((t (:foreground ,red-dark))))
   `(emacs-news-is-documented ((t (:foreground ,red-dark))))

   ;; Built-in: textmodes/enriched.el.gz
   `(excerpt ((t (:foreground ,fg-main))))
   `(fixed ((t (:foreground ,fg-main))))

   ;; Built-in: textmodes/flyspell.el.gz
   `(flyspell-duplicate ((t (:foreground ,fg-main))))
   `(flyspell-incorrect ((t (:foreground ,fg-main))))

   ;; Built-in: textmodes/rst.el.gz
   `(rst-adornment ((t (:foreground ,fg-main))))
   `(rst-block ((t (:foreground ,fg-main))))
   `(rst-comment ((t (:foreground ,fg-dim))))
   `(rst-definition ((t (:foreground ,fg-main))))
   `(rst-directive ((t (:foreground ,lavender :weight semibold))))
   `(rst-emphasis1 ((t (:foreground ,fg-main))))
   `(rst-emphasis2 ((t (:foreground ,fg-main))))
   `(rst-external ((t (:foreground ,fg-main))))
   `(rst-level-1 ((t (:foreground ,fg-main))))
   `(rst-level-2 ((t (:foreground ,fg-main))))
   `(rst-level-3 ((t (:foreground ,fg-main))))
   `(rst-level-4 ((t (:foreground ,fg-main))))
   `(rst-level-5 ((t (:foreground ,fg-main))))
   `(rst-level-6 ((t (:foreground ,fg-main))))
   `(rst-literal ((t (:foreground ,fg-main))))
   `(rst-reference ((t (:foreground ,fg-main))))
   `(rst-transition ((t (:foreground ,fg-main))))

   ;; Built-in: textmodes/sgml-mode.el.gz
   `(sgml-namespace ((t (:foreground ,violet))))

   ;; Built-in: textmodes/string-edit.el.gz
   `(string-edit-prompt ((t (:foreground ,red-dark))))

   ;; Built-in: textmodes/table.el.gz
   `(table-cell ((t (:foreground ,fg-main))))

   ;; Built-in: textmodes/tex-mode.el.gz
   `(subscript ((t (:foreground ,fg-main))))
   `(superscript ((t (:foreground ,fg-main))))
   `(tex-math ((t (:foreground ,fg-main))))
   `(tex-verbatim ((t (:foreground ,fg-main))))

   ;; Built-in: textmodes/texinfo.el.gz
   `(texinfo-heading ((t (:foreground ,navy :weight semibold))))

   ;; Built-in: time.el.gz
   `(display-time-date-and-time ((t (:foreground ,pink))))
   `(world-clock-label ((t (:foreground ,fg-main))))

   ;; Built-in: tmm.el.gz
   `(tmm-inactive ((t (:foreground ,fg-dim))))

   ;; Built-in: tooltip.el.gz
   `(tooltip ((t (:foreground ,fg-main :background ,bg-dim))))

   ;; Built-in: transient.el.gz
   `(transient-active-infix ((t (:foreground ,fg-main))))
   `(transient-argument ((t (:foreground ,fg-main))))
   `(transient-delimiter ((t (:foreground ,fg-main))))
   `(transient-disabled-suffix ((t (:foreground ,fg-dim))))
   `(transient-enabled-suffix ((t (:foreground ,fg-main))))
   `(transient-heading ((t (:foreground ,navy :weight semibold))))
   `(transient-higher-level ((t (:foreground ,fg-main))))
   `(transient-inactive-argument ((t (:foreground ,fg-dim))))
   `(transient-inactive-value ((t (:foreground ,fg-dim))))
   `(transient-inapt-suffix ((t (:foreground ,fg-main))))
   `(transient-key ((t (:foreground ,fg-main))))
   `(transient-key-exit ((t (:foreground ,fg-main))))
   `(transient-key-noop ((t (:foreground ,fg-main))))
   `(transient-key-return ((t (:foreground ,fg-main))))
   `(transient-key-stay ((t (:foreground ,fg-main))))
   `(transient-mismatched-key ((t (:foreground ,red-dark))))
   `(transient-nonstandard-key ((t (:foreground ,fg-main))))
   `(transient-unreachable ((t (:foreground ,fg-main))))
   `(transient-unreachable-key ((t (:foreground ,fg-main))))
   `(transient-value ((t (:foreground ,pink))))

   ;; Built-in: treesit.el.gz
   `(treesit-explorer-anonymous-node ((t (:foreground ,fg-main))))
   `(treesit-explorer-field-name ((t (:foreground ,fg-main))))

   ;; Built-in: tutorial.el.gz
   `(tutorial-warning-face ((t (:foreground ,orange :weight semibold))))

   ;; Built-in: vc/add-log.el.gz
   `(change-log-acknowledgment ((t (:foreground ,fg-main))))
   `(change-log-conditionals ((t (:foreground ,fg-main))))
   `(change-log-date ((t (:foreground ,pink))))
   `(change-log-email ((t (:foreground ,fg-main))))
   `(change-log-file ((t (:foreground ,fg-main))))
   `(change-log-function ((t (:foreground ,water))))
   `(change-log-list ((t (:foreground ,fg-main))))
   `(change-log-name ((t (:foreground ,fg-main))))

   ;; Built-in: vc/compare-w.el.gz
   `(compare-windows ((t (:foreground ,fg-main))))
   `(compare-windows-added ((t (:foreground ,water-dark :weight semibold))))
   `(compare-windows-removed ((t (:foreground ,red-dark :background ,bg-red))))

   ;; Built-in: vc/diff-mode.el.gz
   `(diff-added ((t (:foreground ,water-dark :background ,bg-blue :extend t))))
   `(diff-changed ((t (:foreground ,gold-dark :background ,bg-active :extend t))))
   `(diff-changed-unspecified ((t (:foreground ,gold-dark :background ,bg-active :extend t))))
   `(diff-context ((t (:foreground ,fg-main))))
   `(diff-error ((t (:foreground ,red-dark))))
   `(diff-file-header ((t (:foreground ,navy :background ,bg-dim :weight semibold :extend t))))
   `(diff-function ((t (:foreground ,water))))
   `(diff-header ((t (:foreground ,navy :background ,bg-dim :weight semibold :extend t))))
   `(diff-hunk-header ((t (:foreground ,navy :background ,bg-dim :weight semibold :extend t))))
   `(diff-index ((t (:foreground ,fg-main))))
   `(diff-indicator-added ((t (:foreground ,water-dark :weight semibold))))
   `(diff-indicator-changed ((t (:foreground ,gold-dark :background ,bg-active))))
   `(diff-indicator-removed ((t (:foreground ,red-dark :background ,bg-red))))
   `(diff-nonexistent ((t (:foreground ,fg-main))))
   `(diff-refine-added ((t (:foreground ,water-dark :background ,bg-blue :extend t))))
   `(diff-refine-changed ((t (:foreground ,gold-dark :background ,bg-active :extend t))))
   `(diff-refine-removed ((t (:foreground ,red-dark :background ,bg-red :extend t))))
   `(diff-removed ((t (:foreground ,red-dark :background ,bg-red :extend t))))

   ;; Built-in: vc/ediff-init.el.gz
   `(ediff-current-diff-A ((t (:foreground ,red-dark :background ,bg-red :extend t))))
   `(ediff-current-diff-Ancestor ((t (:foreground ,red-dark :background ,bg-red :extend t))))
   `(ediff-current-diff-B ((t (:foreground ,water-dark :background ,bg-blue :extend t))))
   `(ediff-current-diff-C ((t (:foreground ,gold-dark :background ,bg-active :extend t))))
   `(ediff-even-diff-A ((t (:foreground ,red-dark :background ,bg-red :extend t))))
   `(ediff-even-diff-Ancestor ((t (:foreground ,red-dark :background ,bg-red :extend t))))
   `(ediff-even-diff-B ((t (:foreground ,water-dark :background ,bg-blue :extend t))))
   `(ediff-even-diff-C ((t (:foreground ,gold-dark :background ,bg-active :extend t))))
   `(ediff-fine-diff-A ((t (:foreground ,red-dark :background ,bg-red :extend t))))
   `(ediff-fine-diff-Ancestor ((t (:foreground ,red-dark :background ,bg-red :extend t))))
   `(ediff-fine-diff-B ((t (:foreground ,water-dark :background ,bg-blue :extend t))))
   `(ediff-fine-diff-C ((t (:foreground ,gold-dark :background ,bg-active :extend t))))
   `(ediff-odd-diff-A ((t (:foreground ,red-dark :background ,bg-red :extend t))))
   `(ediff-odd-diff-Ancestor ((t (:foreground ,red-dark :background ,bg-red :extend t))))
   `(ediff-odd-diff-B ((t (:foreground ,water-dark :background ,bg-blue :extend t))))
   `(ediff-odd-diff-C ((t (:foreground ,gold-dark :background ,bg-active :extend t))))

   ;; Built-in: vc/log-edit.el.gz
   `(log-edit-header ((t (:foreground ,navy :weight semibold))))
   `(log-edit-headers-separator ((t (:foreground ,navy :weight semibold))))
   `(log-edit-summary ((t (:foreground ,fg-main))))
   `(log-edit-unknown-header ((t (:foreground ,navy :weight semibold))))

   ;; Built-in: vc/log-view.el.gz
   `(log-view-commit-body ((t (:foreground ,fg-main))))
   `(log-view-file ((t (:foreground ,fg-main))))
   `(log-view-message ((t (:foreground ,fg-main))))

   ;; Built-in: vc/pcvs-info.el.gz
   `(cvs-filename ((t (:foreground ,fg-main))))
   `(cvs-handled ((t (:foreground ,fg-main))))
   `(cvs-header ((t (:foreground ,navy :weight semibold))))
   `(cvs-marked ((t (:foreground ,fg-main))))
   `(cvs-msg ((t (:foreground ,fg-main))))
   `(cvs-need-action ((t (:foreground ,fg-main))))
   `(cvs-unknown ((t (:foreground ,fg-main))))

   ;; Built-in: vc/smerge-mode.el.gz
   `(smerge-base ((t (:foreground ,gold-dark :background ,bg-active :extend t))))
   `(smerge-lower ((t (:foreground ,water-dark :background ,bg-blue :extend t))))
   `(smerge-markers ((t (:foreground ,fg-dim :background ,bg-dim :weight bold :extend t))))
   `(smerge-mine ((t (:foreground ,red-dark :background ,bg-red :extend t))))
   `(smerge-other ((t (:foreground ,water-dark :background ,bg-blue :extend t))))
   `(smerge-refined-added ((t (:foreground ,water-dark :background ,bg-blue :weight semibold))))
   `(smerge-refined-change ((t (:foreground ,gold-dark :background ,bg-region))))
   `(smerge-refined-changed ((t (:foreground ,gold-dark :background ,bg-region))))
   `(smerge-refined-removed ((t (:foreground ,red-dark :background ,bg-red :weight semibold))))
   `(smerge-upper ((t (:foreground ,red-dark :background ,bg-red :extend t))))

   ;; Built-in: vc/vc-dir.el.gz
   `(vc-dir-directory ((t (:foreground ,navy :weight semibold))))
   `(vc-dir-file ((t (:foreground ,fg-main))))
   `(vc-dir-header ((t (:foreground ,navy :weight semibold))))
   `(vc-dir-header-value ((t (:foreground ,pink))))
   `(vc-dir-mark-indicator ((t (:foreground ,fg-main))))
   `(vc-dir-status-edited ((t (:foreground ,fg-main))))
   `(vc-dir-status-ignored ((t (:foreground ,fg-dim))))
   `(vc-dir-status-up-to-date ((t (:foreground ,pink))))
   `(vc-dir-status-warning ((t (:foreground ,orange :weight semibold))))

   ;; Built-in: vc/vc-git.el.gz
   `(vc-git-log-edit-summary-max-warning ((t (:foreground ,orange :weight semibold))))
   `(vc-git-log-edit-summary-target-warning ((t (:foreground ,orange :weight semibold))))

   ;; Built-in: vc/vc-hooks.el.gz
   `(vc-conflict-state ((t (:foreground ,red-dark))))
   `(vc-edited-state ((t (:foreground ,fg-main))))
   `(vc-ignored-state ((t (:foreground ,fg-dim))))
   `(vc-locally-added-state ((t (:foreground ,water-dark :weight semibold))))
   `(vc-locked-state ((t (:foreground ,fg-main))))
   `(vc-missing-state ((t (:foreground ,fg-main))))
   `(vc-needs-update-state ((t (:foreground ,pink))))
   `(vc-removed-state ((t (:foreground ,red-dark :background ,bg-red))))
   `(vc-state-base ((t (:foreground ,fg-main))))
   `(vc-up-to-date-state ((t (:foreground ,pink))))

   ;; Built-in: vcursor.el.gz
   `(vcursor ((t (:foreground ,fg-main))))

   ;; Built-in: which-key.el.gz
   `(which-key-command-description-face ((t (:foreground ,gold :weight semibold))))
   `(which-key-docstring-face ((t (:foreground ,red-dark))))
   `(which-key-group-description-face ((t (:foreground ,fg-main))))
   `(which-key-highlighted-command-face ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))
   `(which-key-key-face ((t (:foreground ,gold :weight semibold))))
   `(which-key-local-map-description-face ((t (:foreground ,fg-main))))
   `(which-key-note-face ((t (:foreground ,fg-main))))
   `(which-key-separator-face ((t (:foreground ,fg-main))))
   `(which-key-special-key-face ((t (:foreground ,gold :weight semibold))))

   ;; Built-in: whitespace.el.gz
   `(whitespace-big-indent ((t (:foreground ,fg-faint :background ,bg-main))))
   `(whitespace-empty ((t (:foreground ,red-dark :background ,bg-red))))
   `(whitespace-hspace ((t (:foreground ,fg-faint :background ,bg-main))))
   `(whitespace-indentation ((t (:foreground ,fg-faint :background ,bg-main))))
   `(whitespace-line ((t (:foreground ,fg-faint :background ,bg-main))))
   `(whitespace-missing-newline-at-eof ((t (:foreground ,fg-faint :background ,bg-main))))
   `(whitespace-newline ((t (:foreground ,fg-faint :background ,bg-main))))
   `(whitespace-space ((t (:foreground ,fg-faint :background ,bg-main))))
   `(whitespace-space-after-tab ((t (:foreground ,fg-faint :background ,bg-main))))
   `(whitespace-space-before-tab ((t (:foreground ,red-dark :background ,bg-red))))
   `(whitespace-tab ((t (:foreground ,fg-faint :background ,bg-main))))
   `(whitespace-trailing ((t (:foreground ,red-dark :background ,bg-red))))

   ;; Built-in: wid-edit.el.gz
   `(widget-button ((t (:foreground ,water))))
   `(widget-button-pressed ((t (:foreground ,water))))
   `(widget-documentation ((t (:foreground ,red-dark))))
   `(widget-field ((t (:foreground ,navy-dark :background ,bg-region :weight semibold :extend t))))
   `(widget-inactive ((t (:foreground ,fg-dim))))
   `(widget-single-line-field ((t (:foreground ,fg-main))))
   `(widget-unselected ((t (:foreground ,navy-dark :background ,bg-active :weight semibold :extend t))))

   ;; Built-in: window-tool-bar.el.gz
   `(window-tool-bar-button ((t (:foreground ,water))))
   `(window-tool-bar-button-disabled ((t (:foreground ,fg-dim))))
   `(window-tool-bar-button-hover ((t (:foreground ,water))))

   ;; Built-in: woman.el.gz
   `(woman-addition ((t (:foreground ,fg-main))))
   `(woman-bold ((t (:foreground ,fg-main))))
   `(woman-italic ((t (:foreground ,fg-main))))
   `(woman-symbol ((t (:foreground ,fg-main))))
   `(woman-unknown ((t (:foreground ,fg-main))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'osmanthus)
(provide 'osmanthus-theme)

;;; osmanthus-theme.el ends here
