# Osmanthus Theme

Osmanthus is a warm, gold-centered light theme for Emacs. It is independent
of Modus Themes and explicitly defines faces for the built-in packages shipped
with Emacs 30.2.

## Requirements

- Emacs 30.1 or later
- Git, for installation through `package-vc-install`

## Installation

Install directly from the repository:

```emacs-lisp
(package-vc-install "https://github.com/kn66/osmanthus-theme")
```

After installation, no manual change to `custom-theme-load-path` is needed.
Enable the theme normally:

```emacs-lisp
(load-theme 'osmanthus t)
```

For persistent startup configuration, only the `load-theme` form is needed.

## Design

Gold and yellow provide the primary emphasis. Warm white, beige, and brown
form the foundation, while water blue, navy, lavender, violet, pink, orange,
silver, and deep red distinguish syntax and semantic states. Green is omitted
from the semantic palette.

The theme uses explicit static face definitions. It does not discover or
classify faces at run time and does not install refresh hooks or timers.

## Supported third-party packages

- Magit, magit-section, git-commit, git-rebase, and Transient
- diff-hl
- Vertico, Consult, Marginalia, Corfu, Cape, Embark, Orderless, and Tempel

Package faces follow the same palette roles as the rest of Osmanthus. Added
content uses water blue instead of green, removed content uses deep red, and
changed or selected content uses gold and yellow. Completion matches use gold,
while source types and secondary distinctions use navy, violet, and pink.

## License

See [LICENSE](LICENSE).
