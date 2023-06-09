(cl:in-package #:constrictor)

(define-compiler-macro list
    (&whole form &rest object-forms)
  (if (> (length object-forms) 10)
      form
      (labels ((nest (forms)
                 (if (null forms)
                     '()
                     `(cons ,(car forms)
                            ,(nest (cdr forms))))))
        (nest object-forms))))

(declaim (inline list))

(defun list (&rest objects)
  (copy-list objects))

(declaim (notinline list))

(define-compiler-macro list*
    (&whole form object-form &rest object-forms)
  (cond ((null object-forms)
         object-form)
        ((> (length object-forms) 10)
         form)
        (t
         (labels ((nest (forms)
                    (if (null (cdr forms))
                        (car forms)
                        `(cons ,(car forms)
                               ,(nest (cdr forms))))))
           `(cons ,object-form
                  ,(nest object-forms))))))

(declaim (inline list*))

(defun list* (object &rest objects)
  (if (null objects)
      object
      (loop with head = (cons object nil)
            for tail = head then (cdr tail)
            for rest = objects then first
            for first = (cdr objects) then (cdr first)
            until (null first)
            do (setf (cdr tail)
                     (cons (car rest) nil))
            finally (setf (cdr tail) (car rest))
                    (return head))))

(declaim (notinline list*))

(setf (documentation 'list 'function)
      (format nil "Syntax: list &rest objects~@
                   ~@
                   Return a proper list containing the objects given~@
                   as arguments in the same order as the arguments."))

(setf (documentation 'list* 'function)
      (format nil "Syntax: list* object &rest objects~@
                   ~@
                   Return a list of the supplied objects such that~@
                   the last object supplied becomes the CDR of the ~@
                   last CONS cell in the returned list.  So for the~@
                   same number of arguments as for LIST, the return~@
                   value of LIST* contains one fewer CONS cells.  If~@
                   only one object is supplied, then that object is~@
                   returned as the value of LIST*."))
