(cl:in-package #:constrictor-test)

(defun test-append ()
  (rt:do-test 'cl-test::append.1)
  (rt:do-test 'cl-test::append.2)
  (rt:do-test 'cl-test::append.3)
  (rt:do-test 'cl-test::append.4)
  (rt:do-test 'cl-test::append.5)
  (rt:do-test 'cl-test::append.6)
  (rt:do-test 'cl-test::append.7)
  (rt:do-test 'cl-test::append.8)
  (rt:do-test 'cl-test::append.9)
  (rt:do-test 'cl-test::append.10)
  (rt:do-test 'cl-test::append.order.1)
  (rt:do-test 'cl-test::append.order.2)
  (rt:do-test 'cl-test::append.error.1)
  (rt:do-test 'cl-test::append.error.2))
