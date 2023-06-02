(cl:in-package #:constrictor-test)

(defun test ()
  (test-copy-tree)
  (test-nth)
  (test-endp)
  (test-subst)
  (test-subst-if)
  (test-subst-if-not)
  (test-nsubst)
  (test-nsubst-if)
  (test-nsubst-if-not)
  (test-tree-equal)
  (test-copy-list)
  (test-list)
  (test-list-length)
  (test-copy-alist)
  (test-assoc)
  (test-assoc-if)
  (test-assoc-if-not)
  (test-rassoc)
  (test-rassoc-if)
  (test-rassoc-if-not)
  (test-last)
  (test-butlast)
  (test-ldiff)
  (test-tailp)
  (test-member)
  (test-member-if)
  (test-member-if-not)
  (test-mapcar)
  (test-mapc)
  (test-mapl)
  (test-mapcan)
  (test-maplist)
  (test-mapcon)
  (test-acons)
  (test-nthcdr)
  (test-nconc)
  (test-append)
  (test-revappend)
  (test-nreconc)
  (test-getf)
  (test-intersection)
  (test-nintersection)
  (test-adjoin)
  (test-set-difference)
  (test-nset-difference)
  (test-set-exclusive-or)
  (test-nset-exclusive-or)
  (test-subsetp)
  (test-union)
  (test-nunion)
  (values))
