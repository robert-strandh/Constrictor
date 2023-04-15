(cl:in-package #:constrictor)

(declaim (inline assoc-core))

(defun assoc-core (item alist key test test-not)
  (with-key (key)
    (with-test (test test-not)
      (with-alist-elements (element alist)
        (when (apply-test item (apply-key (car element)))
          (return-from assoc-core element))))))

(declaim (notinline assoc-core))

(declaim (inline assoc))

(defun assoc
    (item alist
     &key
       key
       (test #'eql test-supplied-p)
       (test-not #'eql test-not-supplied-p))
  (with-canonical-key-test-test-not
      (key test test-supplied-p test-not test-not-supplied-p)
    (assoc-core item alist key test test-not)))

(declaim (notinline assoc))
