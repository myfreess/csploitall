(define-syntax def
  (syntax-rules ()
    ((def SYM VALUE) (define SYM VALUE))
    ((def SYM) (define SYM))
    ))
(use-modules (ice-9 readline))
(activate-readline)
(use-modules (language tree-il))
(define (expand x)
(tree-il->scheme (macroexpand x)))
