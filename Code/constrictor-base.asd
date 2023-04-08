(cl:in-package #:asdf-user)

(defsystem #:constrictor-base
  :serial t
  :description "Implementation of the Conses dictionary, base system.")

(cl:defpackage #:constrictor-asdf
  (:use #:common-lisp)
  (:export #:*string-designators*))

(cl:in-package #:constrictor-asdf)

(defparameter *string-designators*
  '(#:caar #:cadr #:cdar #:cddr
    #:caaar #:caadr #:cadar #:caddr
    #:cdaar #:cdadr #:cddar #:cdddr
    #:caaaar #:caaadr #:caadar #:caaddr
    #:cadaar #:cadadr #:caddar #:cadddr
    #:cdaaar #:cdaadr #:cdadar #:cdaddr
    #:cddaar #:cddadr #:cdddar #:cddddr))
