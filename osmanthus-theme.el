;;; osmanthus-theme.el --- A warm, auspicious light theme -*- lexical-binding: t; -*-

;; Copyright (C) 2026

;; Author: nobu43
;; Keywords: faces, theme
;; Package-Requires: ((emacs "30.1"))
;; Version: 0.1.0

;;; Commentary:

;; Osmanthus is an independent light theme.  It does not inherit from
;; Modus Themes or any other theme package.
;;
;; The palette gives gold and yellow the most visually important jobs without
;; using low-contrast yellow for text.  Warm white, beige, and brown form the
;; quiet foundation; water blue, navy, lavender, violet, pink, and deep red
;; separate syntax and semantic states.  Green is intentionally absent from
;; the semantic palette because it had a neutral score in the source data.
;;
;; Emacs defines many faces lazily.  In addition to carefully designed core
;; faces, this theme classifies every face known when the theme is loaded and
;; refreshes newly defined faces after libraries are loaded.  This gives
;; built-in packages broad coverage without copying another theme's face map.

;;; Code:

(require 'cl-lib)
(require 'custom)

;;;###theme-autoload
(deftheme osmanthus
  "A warm, gold-centered light theme with adaptive built-in face coverage."
  :family 'osmanthus
  :kind 'color-scheme
  :background-mode 'light)

(defconst osmanthus-palette
  '((bg-main       . "#FFFDF4")
    (bg-dim        . "#F8F0D2")
    (bg-alt        . "#F4E8BD")
    (bg-active     . "#FFF6D6")
    (bg-region     . "#F6D87A")
    (bg-search     . "#FFD45A")
    (bg-blue       . "#E4F2F6")
    (bg-red        . "#F9E3E7")
    (bg-orange     . "#FBE8D7")
    (bg-lavender   . "#EEE8F7")
    (fg-main       . "#3A322B")
    (fg-dim        . "#746B61")
    (fg-faint      . "#776E62")
    (border        . "#D4C59E")
    (gold          . "#986500")
    (gold-dark     . "#744C00")
    (ochre         . "#A75E00")
    (navy          . "#294C68")
    (navy-dark     . "#203D53")
    (water         . "#2F708A")
    (water-dark    . "#20566D")
    (red           . "#AA3D4F")
    (red-dark      . "#8E2F43")
    (orange        . "#B85116")
    (pink          . "#A93F70")
    (lavender      . "#725A9C")
    (violet        . "#5E3A82")
    (silver        . "#68707A")
    (mode-line     . "#E5B83F")
    (mode-line-dim . "#EDE7D7"))
  "Color roles used by `osmanthus'.")

(defun osmanthus--color (role)
  "Return the color assigned to ROLE."
  (or (alist-get role osmanthus-palette)
      (error "Unknown Osmanthus color role: %S" role)))

(defconst osmanthus--explicit-roles
  '((dim
     shadow file-name-shadow font-lock-comment-face
     font-lock-comment-delimiter-face completions-annotations
     line-number mode-line-inactive header-line-inactive
     tab-bar-tab-inactive tab-line-tab-inactive widget-inactive
     dired-ignored dired-broken-symlink org-drawer org-property-value
     org-agenda-dimmed-todo-face org-agenda-inactive-calendar
     gnus-header-content gnus-cite-1 message-cited-text-1)
    (gold
     minibuffer-prompt read-multiple-choice-face help-key-binding
     font-lock-builtin-face font-lock-variable-name-face
     font-lock-variable-use-face font-lock-property-name-face
     font-lock-property-use-face font-lock-preprocessor-face
     completions-common-part eldoc-highlight-function-argument
     dired-mark dired-marked org-special-keyword org-tag org-priority
     Info-menu-header Info-index-match Man-overstrike
     package-name package-help-section-name)
    (ochre
     escape-glyph font-lock-escape-face font-lock-negation-char-face
     font-lock-operator-face font-lock-misc-punctuation-face
     font-lock-regexp-grouping-backslash font-lock-regexp-grouping-construct
     org-macro org-meta-line org-footnote org-target org-radio-target
     compilation-line-number compilation-column-number)
    (navy
     font-lock-type-face font-lock-function-name-face
     font-lock-bracket-face help-argument-name help-for-help-header header-line
     tab-bar-tab tab-line-tab-current dired-directory dired-header
     ibuffer-filter-group-name ibuffer-title Info-title-1 Info-title-2
     Man-section-header org-document-title org-document-info-keyword
     outline-1 outline-5 org-level-1 org-level-5)
    (water
     link button browse-url-button font-lock-function-call-face
     completions-first-difference completions-highlight
     xref-file-header xref-match dired-symlink dired-broken-symlink
     org-link org-cite org-agenda-structure org-agenda-date
     Info-xref Info-xref-visited package-description)
    (lavender
     font-lock-keyword-face font-lock-delimiter-face
     font-lock-punctuation-face font-lock-regexp-face
     elisp-shorthand-font-lock-face org-todo outline-4 outline-8
     org-level-4 org-level-8)
    (violet
     font-lock-type-face font-lock-doc-markup-face
     font-lock-regexp-grouping-construct org-verbatim org-code
     outline-2 outline-6 org-level-2 org-level-6)
    (pink
     font-lock-constant-face font-lock-number-face
     calendar-today diary anniversary org-date org-date-selected
     org-agenda-date-today org-agenda-calendar-event
     outline-3 outline-7 org-level-3 org-level-7)
    (red
     font-lock-string-face font-lock-doc-face font-lock-warning-face
     error isearch-fail show-paren-mismatch trailing-whitespace
     org-warning org-agenda-clocking org-agenda-current-time
     compilation-error flymake-error eglot-diagnostic-tag-unnecessary-face)
    (orange
     warning compilation-warning flymake-warning org-upcoming-deadline
     org-scheduled-previously org-agenda-date-weekend)
    (success
     success compilation-info flymake-note org-done org-headline-done
     org-scheduled org-agenda-done org-agenda-structure-secondary))
  "Exact face-to-role assignments for important Emacs faces.")

(defvar osmanthus--registered-faces (make-hash-table :test #'eq)
  "Faces already registered with the Osmanthus theme.")

;; `use-package' normally requires this file before its :config form calls
;; `load-theme'.  `load-theme' then evaluates the file a second time and
;; `deftheme' clears the first set of theme settings.  Clear this cache on
;; every evaluation as well, so the second pass registers every face again.
(clrhash osmanthus--registered-faces)

(defvar osmanthus--refresh-timer nil
  "Pending idle timer used to reapply Osmanthus after library setup.")

(defun osmanthus--explicit-role (face)
  "Return the explicit palette role for FACE, or nil."
  (cl-loop for (role . faces) in osmanthus--explicit-roles
           when (memq face faces)
           return role))

(defun osmanthus--name-matches-p (regexp name)
  "Return non-nil when REGEXP matches face NAME."
  (string-match-p regexp name))

(defun osmanthus--inferred-role (face)
  "Infer a semantic palette role for FACE from its name."
  (let ((name (symbol-name face)))
    (or
     (osmanthus--explicit-role face)
     (cond
      ((osmanthus--name-matches-p
        "\\(?:error\\|fail\\|fatal\\|invalid\\|mismatch\\|conflict\\|breakpoint\\)"
        name)
       'red)
      ((osmanthus--name-matches-p
        "\\(?:warning\\|warn\\|attention\\|urgent\\|critical\\|overdue\\)"
        name)
       'orange)
      ((osmanthus--name-matches-p
        "\\(?:removed\\|deleted\\|rejected\\|unmatched\\)" name)
       'removed)
      ((osmanthus--name-matches-p
        "\\(?:added\\|inserted\\|created\\|passed\\|success\\|resolved\\|done\\)"
        name)
       'success)
      ((osmanthus--name-matches-p
        "\\(?:changed\\|modified\\|pending\\|staged\\|outdated\\)" name)
       'changed)
      ((osmanthus--name-matches-p
        "\\(?:comment\\|shadow\\|inactive\\|disabled\\|dim\\|faint\\|ignored\\)"
        name)
       'dim)
      ((osmanthus--name-matches-p
        "\\(?:string\\|doc\\|quote\\|citation\\|cite\\)" name)
       'red)
      ((osmanthus--name-matches-p
        "\\(?:keyword\\|macro\\|directive\\|preprocessor\\|special-keyword\\)"
        name)
       'lavender)
      ((osmanthus--name-matches-p
        "\\(?:type\\|class\\|interface\\|module\\|namespace\\|constructor\\)"
        name)
       'violet)
      ((osmanthus--name-matches-p
        "\\(?:function\\|method\\|call\\|link\\|url\\|xref\\|button\\)" name)
       'water)
      ((osmanthus--name-matches-p
        "\\(?:constant\\|number\\|numeric\\|value\\|property\\|variable\\)" name)
       'pink)
      ((osmanthus--name-matches-p
        "\\(?:title\\|header\\|heading\\|section\\|directory\\|file-name\\)" name)
       'navy)
      ((osmanthus--name-matches-p
        "\\(?:prompt\\|key-binding\\|keybinding\\|key-face\\|command\\)" name)
       'gold)
      ((osmanthus--name-matches-p
        "\\(?:date\\|time\\|calendar\\|diary\\|holiday\\)" name)
       'pink)
      (t 'default)))))

(defun osmanthus--role-attributes (role)
  "Return face attributes for semantic ROLE."
  (pcase role
    ('dim
     `(:foreground ,(osmanthus--color 'fg-dim)))
    ('gold
     `(:foreground ,(osmanthus--color 'gold) :weight semibold))
    ('ochre
     `(:foreground ,(osmanthus--color 'ochre)))
    ('navy
     `(:foreground ,(osmanthus--color 'navy) :weight semibold))
    ('water
     `(:foreground ,(osmanthus--color 'water)))
    ('lavender
     `(:foreground ,(osmanthus--color 'lavender) :weight semibold))
    ('violet
     `(:foreground ,(osmanthus--color 'violet)))
    ('pink
     `(:foreground ,(osmanthus--color 'pink)))
    ('red
     `(:foreground ,(osmanthus--color 'red-dark)))
    ('orange
     `(:foreground ,(osmanthus--color 'orange) :weight semibold))
    ('success
     `(:foreground ,(osmanthus--color 'water-dark) :weight semibold))
    ('removed
     `(:foreground ,(osmanthus--color 'red-dark)
       :background ,(osmanthus--color 'bg-red)))
    ('changed
     `(:foreground ,(osmanthus--color 'gold-dark)
       :background ,(osmanthus--color 'bg-active)))
    (_
     `(:foreground ,(osmanthus--color 'fg-main)))))

(defun osmanthus--ansi-attributes (name)
  "Return ANSI face attributes for face NAME, or nil."
  (when (string-match
         "\\`ansi-color-\\(?:bright-\\)?\\(black\\|red\\|green\\|yellow\\|blue\\|magenta\\|cyan\\|white\\)\\'"
         name)
    (let ((bright (string-match-p "bright-" name))
          (color-name (match-string 1 name)))
      `(:foreground
        ,(pcase color-name
           ("black" (if bright
                        (osmanthus--color 'fg-dim)
                      (osmanthus--color 'fg-main)))
           ("red" (osmanthus--color (if bright 'red 'red-dark)))
           ;; Water blue deliberately replaces conventional terminal green.
           ("green" (osmanthus--color
                     (if bright 'water 'water-dark)))
           ("yellow" (osmanthus--color
                      (if bright 'ochre 'gold-dark)))
           ("blue" (osmanthus--color (if bright 'water 'navy)))
           ("magenta" (osmanthus--color
                       (if bright 'pink 'violet)))
           ("cyan" (osmanthus--color
                    (if bright 'water 'water-dark)))
           (_ (osmanthus--color
               (if bright 'fg-main 'silver))))))))

(defun osmanthus--face-attributes (face)
  "Return a complete Osmanthus attribute plist for FACE."
  (let* ((name (symbol-name face))
         (fg (osmanthus--color 'fg-main))
         (bg (osmanthus--color 'bg-main))
         (dim (osmanthus--color 'fg-dim))
         (border (osmanthus--color 'border))
         (ansi (osmanthus--ansi-attributes name)))
    (cond
     ((eq face 'default) `(:foreground ,fg :background ,bg))
     ((memq face '(fixed-pitch fixed-pitch-serif variable-pitch
                   variable-pitch-text))
      `(:foreground ,fg :background ,bg))
     ((eq face 'bold) '(:weight bold))
     ((eq face 'bold-italic) '(:weight bold :slant italic))
     ((eq face 'italic) '(:slant italic))
     ((eq face 'underline) '(:underline t))
     ((memq face '(cursor mouse))
      `(:foreground ,bg :background ,(osmanthus--color 'gold)))
     ((memq face '(border child-frame-border))
      `(:background ,border))
     ((eq face 'internal-border)
      `(:background ,(osmanthus--color 'bg-dim)))
     ((memq face '(fringe vertical-border separator-line))
      `(:foreground ,border :background ,bg))
     ((memq face '(window-divider
                   window-divider-first-pixel window-divider-last-pixel))
      `(:foreground ,(osmanthus--color 'bg-dim)
        :background ,(osmanthus--color 'bg-dim)))
     ((eq face 'region)
      `(:foreground ,fg :background ,(osmanthus--color 'bg-region)
        :extend t))
     ((memq face '(secondary-selection mouse-drag-and-drop-region))
      `(:foreground ,fg :background ,(osmanthus--color 'bg-lavender)
        :extend t))
     ((memq face '(highlight hl-line pulse-highlight-start-face
                   pulse-highlight-face))
      `(:foreground ,fg :background ,(osmanthus--color 'bg-active)
        :extend t))
     ((memq face '(widget-field custom-field
                   completions-highlight completion-preview-highlight
                   icomplete-selected-match vertico-current))
      `(:foreground ,(osmanthus--color 'navy-dark)
        :background ,(osmanthus--color 'bg-region)
        :weight semibold :extend t))
     ((memq face '(completions-group-title vertico-group-title))
      `(:foreground ,(osmanthus--color 'navy)
        :background ,(osmanthus--color 'bg-dim)
        :weight bold :extend t))
     ((memq face '(completions-group-separator vertico-group-separator))
      `(:foreground ,border :background ,bg :strike-through ,border
        :extend t))
     ((memq face '(completion-preview completion-preview-common
                   completion-preview-exact icomplete-section))
      `(:foreground ,dim :background ,bg :slant italic))
     ((memq face '(isearch query-replace lazy-highlight match
                   next-error next-error-message))
      `(:foreground ,(osmanthus--color 'gold-dark)
        :background ,(osmanthus--color 'bg-search)
        :weight bold))
     ((memq face '(isearch-group-1 isearch-group-2))
      `(:foreground ,(osmanthus--color 'navy-dark)
        :background ,(osmanthus--color 'bg-blue)
        :weight bold))
     ((memq face '(show-paren-match show-paren-match-expression))
      `(:foreground ,(osmanthus--color 'violet)
        :background ,(osmanthus--color 'bg-lavender)
        :weight bold))
     ((eq face 'show-paren-mismatch)
      `(:foreground ,bg :background ,(osmanthus--color 'red-dark)
        :weight bold))
     ((memq face '(line-number line-number-major-tick line-number-minor-tick))
      `(:foreground ,dim :background ,bg))
     ((eq face 'line-number-current-line)
      `(:foreground ,(osmanthus--color 'gold-dark)
        :background ,(osmanthus--color 'bg-active)
        :weight bold))
     ((memq face '(mode-line mode-line-active))
      `(:foreground ,(osmanthus--color 'navy-dark)
        :background ,(osmanthus--color 'mode-line)
        :box (:line-width 1 :color ,(osmanthus--color 'gold-dark))
        :weight semibold))
     ((eq face 'mode-line-inactive)
      `(:foreground ,dim
        :background ,(osmanthus--color 'mode-line-dim)
        :box (:line-width 1 :color ,border)))
     ((string-match-p "\\`mode-line-" name)
      `(:foreground ,(osmanthus--color 'navy-dark) :weight semibold))
     ((eq face 'header-line)
      `(:foreground ,(osmanthus--color 'navy)
        :background ,(osmanthus--color 'bg-dim)
        :box (:line-width -1 :color ,border) :weight semibold))
     ((string-match-p "\\`tab-bar" name)
      (if (string-match-p "inactive" name)
          `(:foreground ,dim :background ,(osmanthus--color 'mode-line-dim))
        `(:foreground ,(osmanthus--color 'navy-dark)
          :background ,(osmanthus--color 'mode-line)
          :weight semibold)))
     ((string-match-p "\\`tab-line" name)
      (if (string-match-p "inactive\\|close-highlight" name)
          `(:foreground ,dim :background ,(osmanthus--color 'mode-line-dim))
        `(:foreground ,(osmanthus--color 'navy)
          :background ,(osmanthus--color 'bg-dim)
          :weight semibold)))
     ((memq face '(tooltip menu tool-bar scroll-bar tty-menu-enabled-face
                   tty-menu-disabled-face tty-menu-selected-face))
      `(:foreground ,fg :background ,(osmanthus--color 'bg-dim)))
     ((memq face '(org-block org-block-begin-line org-block-end-line
                   org-quote org-table))
      `(:foreground ,(osmanthus--color 'navy-dark)
        :background ,(osmanthus--color 'bg-dim)
        :extend t))
     ((memq face '(org-document-title Info-title-1))
      `(:foreground ,(osmanthus--color 'gold-dark)
        :weight bold :height 1.35))
     ((memq face '(org-level-1 outline-1))
      `(:foreground ,(osmanthus--color 'navy) :weight bold :height 1.18))
     ((memq face '(org-level-2 outline-2))
      `(:foreground ,(osmanthus--color 'violet) :weight bold :height 1.14))
     ((memq face '(org-level-3 outline-3))
      `(:foreground ,(osmanthus--color 'pink) :weight bold :height 1.10))
     ((memq face '(org-level-4 outline-4))
      `(:foreground ,(osmanthus--color 'lavender) :weight bold :height 1.07))
     ((memq face '(org-level-5 outline-5))
      `(:foreground ,(osmanthus--color 'gold) :weight bold))
     ((memq face '(org-level-6 outline-6))
      `(:foreground ,(osmanthus--color 'water) :weight bold))
     ((memq face '(org-level-7 outline-7))
      `(:foreground ,(osmanthus--color 'red-dark) :weight bold))
     ((memq face '(org-level-8 outline-8))
      `(:foreground ,(osmanthus--color 'silver) :weight bold))
     ((string-match-p "\\(?:ediff-.*A\\|diff-removed\\|diff-refine-removed\\)" name)
      `(:foreground ,(osmanthus--color 'red-dark)
        :background ,(osmanthus--color 'bg-red) :extend t))
     ((string-match-p "\\(?:ediff-.*B\\|diff-added\\|diff-refine-added\\)" name)
      `(:foreground ,(osmanthus--color 'water-dark)
        :background ,(osmanthus--color 'bg-blue) :extend t))
     ((string-match-p "\\(?:ediff-.*C\\|diff-changed\\|diff-refine-changed\\)" name)
      `(:foreground ,(osmanthus--color 'gold-dark)
        :background ,(osmanthus--color 'bg-active) :extend t))
     ((string-match-p "\\`diff-\\(?:header\\|file-header\\|hunk-header\\)" name)
      `(:foreground ,(osmanthus--color 'navy)
        :background ,(osmanthus--color 'bg-dim) :weight semibold :extend t))
     ((string-match-p "\\`whitespace-" name)
      (if (string-match-p "trailing\\|empty\\|space-before-tab" name)
          `(:foreground ,(osmanthus--color 'red-dark)
            :background ,(osmanthus--color 'bg-red))
        `(:foreground ,(osmanthus--color 'fg-faint)
          :background ,bg)))
     ((string-match-p
       "\\(?:current\\|selected\\|selection\\|highlighted\\)" name)
      `(:foreground ,(osmanthus--color 'navy-dark)
        :background ,(osmanthus--color 'bg-active)
        :weight semibold :extend t))
     (ansi ansi)
     (t (osmanthus--role-attributes
         (osmanthus--inferred-role face))))))

(defun osmanthus--register-face (face immediate)
  "Register FACE with this theme.
When IMMEDIATE is non-nil, also recalculate FACE at once."
  (let ((spec (list face
                    (list (list t (osmanthus--face-attributes face)))
                    immediate
                    "Osmanthus adaptive face mapping."))
        ;; `load-theme' intentionally leaves this internal guard non-nil.
        ;; Temporarily lifting it is necessary for a newly created face to be
        ;; inserted into an already enabled theme.  The setting still belongs
        ;; to the theme and therefore disappears normally when it is disabled.
        (custom--inhibit-theme-enable
         (if immediate nil custom--inhibit-theme-enable)))
    (apply #'custom-theme-set-faces 'osmanthus (list spec))
    (puthash face t osmanthus--registered-faces)))

;;;###autoload
(defun osmanthus-refresh (&optional immediate force)
  "Register all currently defined faces with Osmanthus.

When IMMEDIATE is non-nil and the theme is enabled, recalculate newly
registered faces immediately.  When FORCE is non-nil, recalculate faces which
were registered previously as well.  Interactively, both options are enabled;
this repairs face attributes changed directly by a package after the theme was
loaded."
  (interactive (list t t))
  (let ((apply-now (and immediate
                         (memq 'osmanthus custom-enabled-themes))))
    (dolist (face (face-list))
      (when (or force (not (gethash face osmanthus--registered-faces)))
        (osmanthus--register-face face apply-now)))))

(defun osmanthus--run-deferred-refresh ()
  "Reapply Osmanthus after the current library setup has finished."
  (setq osmanthus--refresh-timer nil)
  (when (memq 'osmanthus custom-enabled-themes)
    (osmanthus-refresh t t)))

(defun osmanthus--schedule-refresh ()
  "Schedule one coalesced Osmanthus refresh for the next idle period."
  (unless (timerp osmanthus--refresh-timer)
    (setq osmanthus--refresh-timer
          (run-with-idle-timer 0 nil #'osmanthus--run-deferred-refresh))))

(defun osmanthus--after-load (&rest _ignored)
  "Apply Osmanthus after a newly loaded library and its setup code."
  (when (memq 'osmanthus custom-enabled-themes)
    ;; Register new faces immediately.  The idle refresh also repairs existing
    ;; faces changed by setup functions called just after `require' returns.
    (osmanthus-refresh t)
    (osmanthus--schedule-refresh)))

(let ((fg (osmanthus--color 'fg-main))
      (dim (osmanthus--color 'fg-dim))
      (red (osmanthus--color 'red-dark))
      (water (osmanthus--color 'water-dark))
      (gold (osmanthus--color 'gold-dark))
      (navy (osmanthus--color 'navy))
      (violet (osmanthus--color 'violet)))
  (custom-theme-set-variables
   'osmanthus
   `(ansi-color-names-vector [,fg ,red ,water ,gold ,navy ,violet ,water ,dim])
   `(term-color-black ,fg)
   `(term-color-red ,red)
   `(term-color-green ,water)
   `(term-color-yellow ,gold)
   `(term-color-blue ,navy)
   `(term-color-magenta ,violet)
   `(term-color-cyan ,water)
   `(term-color-white ,dim)))

;; Register faces already known before `load-theme' enables the theme.  Faces
;; introduced later are handled by `osmanthus--after-load'.
(osmanthus-refresh)
(add-hook 'after-load-functions #'osmanthus--after-load)

(provide-theme 'osmanthus)
(provide 'osmanthus-theme)

;;; osmanthus-theme.el ends here
