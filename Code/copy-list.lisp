(cl:in-package #:constrictor)

(declaim (inline copy-list))

(defun copy-list (list)
  (values (copy-list-and-last list)))

(declaim (notinline copy-list))

(setf (documentation 'copy-list 'function)
      (format nil
              "Syntax copy-list list~@
               ~@
               LIST must be a proper list or a dotted list.~@
               If a circular list is given as the value of LIST~@
               then this function will not terminate.  If LIST is~@
               an atom, then an error of type TYPE-ERROR will be~@
               signaled.  If LIST is a circular list, this function~@
               will not terminate.~@
               ~@
               The list structure of LIST is copied, so that the~@
               return value of this function contains a copy of~@
               each of the top-level CONS cells of LIST.  Each copy~@
               contains the same CAR as the original cons cell, and~@
               the last CONS cell of the value returned form this~@
               function contains the same CDR as the last CONS cell~@
               of LIST."))
