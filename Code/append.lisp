(cl:in-package #:constrictor)

(declaim (inline append))

(defun append (&rest lists)
  (if (null lists)
      '()
      (let* ((reverse (reverse lists))
             (result (first reverse))
             (remaining (cdr reverse)))
        (loop for object in remaining
              do (cond ((null object)
                        nil)
                       ((atom object)
                        (error 'list-expected :datum object))
                       (t
                        ;; At least we have a non-empty list.  But it
                        ;; could be dotted. It could also be circular,
                        ;; but we don't check for that.
                        (multiple-value-bind (copy last)
                            (copy-list-and-last object)
                          (if (null (cdr last))
                              (progn (rplacd last result)
                                     (setq result copy))
                              (error 'list-must-be-proper
                                     :offending-list object))))))
        result)))

(declaim (notinline append))

(define-compiler-macro append (&whole form &rest list-forms)
  (case (length list-forms)
    (0
     '())
    (1
     (first list-forms))
    (2 
     (let ((first-form-variable (gensym))
           (second-form-variable (gensym))
           (copy-variable (gensym))
           (last-variable (gensym)))
       `(let ((,first-form-variable ,(first list-forms))
              (,second-form-variable ,(second list-forms)))
          (cond ((null ,first-form-variable)
                 ,second-form-variable)
                ((atom ,first-form-variable)
                 (error 'list-expected :datum ,first-form-variable))
                (t
                 (multiple-value-bind (,copy-variable ,last-variable)
                     (copy-list-and-last ,first-form-variable)
                   (if (null (cdr ,last-variable))
                       (progn (rplacd ,last-variable ,second-form-variable)
                              ,copy-variable)
                       (error 'list-must-be-proper
                              :offending-list ,first-form-variable))))))))
    (otherwise form)))

(setf (documentation 'append 'function)
      (format nil
              "Syntax: append &rest lists~@
               ~@
               This function creates a list obtained by concatenating~@
               copies of the lists in LISTS, except for the last element~@
               in LISTS which can be any object, and which becomes the~@
               CDR of the last CONS cell of the resulting list.~@
               ~@
               The last element of LISTS can be any object.  Every other~@
               element of LISTS must be a proper list.  If any element~@
               of LISTS except the last one is an object other than a~@
               list, then an error of type TYPE-ERROR is signaled. If any~@
               element of LISTS except the last one is a dotted list,~@
               then an error is signaled.  If any element of LISTS except~@
               the last one is a circular list, then this function will~@
               not terminate"))
