(cl:in-package #:constrictor)

(defmacro pop (place &environment environment)
  (multiple-value-bind (vars vals store-vars writer-form reader-form)
      (get-setf-expansion place environment)
    `(let* (,@(mapcar #'list vars vals)
            (,(car store-vars) ,reader-form))
       (if (listp ,(car store-vars))
           (prog1 (car ,(car store-vars))
             (setq ,(car store-vars) (cdr ,(car store-vars)))
             ,writer-form)
           (error 'must-be-list
                  :datum ',(car store-vars))))))

(setf (documentation 'pop 'function)
      (format nil "POP PLACE~@
                   PLACE must be a CONS cell.  Modify PLACE so that~@
                   it contains what was previously the CDR of PLACE.~@
                   Return the CAR of PLACE before it was modified.~@
                   ~@
                   (POP PLACE) has the same effect and the same return~@
                   value as (PROG1 (CAR PLACE) (SETF PLACE (CDR PLACE)))~@
                   except that POP evaluates sub-forms of PLACE only once."))
                   
