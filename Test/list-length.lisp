(cl:in-package #:constrictor-test)

(defun test-list-length ()
  (rt:do-test 'cl-test::list-length-nil)
  (rt:do-test 'cl-test::list-length-list)
  (rt:do-test 'cl-test::list-length-circular-list)
  (rt:do-test 'cl-test::list-length.order.1)
  (rt:do-test 'cl-test::list-length.4)
  (rt:do-test 'cl-test::list-length.error.1)
  (rt:do-test 'cl-test::list-length.error.2)
  (rt:do-test 'cl-test::list-length.error.3)
  (rt:do-test 'cl-test::list-length.error.4)
  (rt:do-test 'cl-test::list-length.error.5)
  (rt:do-test 'cl-test::list-length-symbol)
  (rt:do-test 'cl-test::list-length-dotted-list))
