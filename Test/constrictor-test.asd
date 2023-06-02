(cl:in-package #:asdf-user)

(defsystem #:constrictor-test
  :depends-on (#:constrictor-extrinsic
               #:ansi-test-common)
  :serial t
  :components
  ((:file "packages")
   (:file "prepare")
   (:file "copy-tree")
   (:file "nth")
   (:file "endp")
   (:file "subst")
   (:file "subst-if")
   (:file "subst-if-not")
   (:file "nsubst")
   (:file "nsubst-if")
   (:file "nsubst-if-not")
   (:file "tree-equal")
   (:file "copy-list")
   (:file "list")
   (:file "list-length")
   (:file "copy-alist")
   (:file "assoc")
   (:file "assoc-if")
   (:file "assoc-if-not")
   (:file "rassoc")
   (:file "rassoc-if")
   (:file "rassoc-if-not")
   (:file "last")
   (:file "ldiff")
   (:file "tailp")
   (:file "member")
   (:file "member-if")
   (:file "member-if-not")
   (:file "mapcar")
   (:file "mapc")
   (:file "mapl")
   (:file "mapcan")
   (:file "maplist")
   (:file "mapcon")
   (:file "acons")
   (:file "nthcdr")
   (:file "nconc")
   (:file "append")
   (:file "revappend")
   (:file "nreconc")
   (:file "getf")
   (:file "remf")
   (:file "intersection")
   (:file "nintersection")
   (:file "adjoin")
   (:file "set-difference")
   (:file "nset-difference")
   (:file "set-exclusive-or")
   (:file "nset-exclusive-or")
   (:file "subsetp")
   (:file "union")
   (:file "nunion")
   (:file "test")))
