(cl:in-package #:constrictor-test)

(defun test-last ()
  (rt:do-test 'cl-test::last.1)
  (rt:do-test 'cl-test::last.2)
  (rt:do-test 'cl-test::last.3)
  (rt:do-test 'cl-test::last.4)
  (rt:do-test 'cl-test::last.5)
  (rt:do-test 'cl-test::last.6)
  (rt:do-test 'cl-test::last.7)
  (rt:do-test 'cl-test::last.8)
  (rt:do-test 'cl-test::last.9)
  (rt:do-test 'cl-test::last.10)
  (rt:do-test 'cl-test::last.11)
  (rt:do-test 'cl-test::last.12)
  (rt:do-test 'cl-test::last.13)
  (rt:do-test 'cl-test::last.14)
  (rt:do-test 'cl-test::last.order.1)
  (rt:do-test 'cl-test::last.order.2)
  (rt:do-test 'cl-test::last.error.1)
  (rt:do-test 'cl-test::last.error.2)
  (rt:do-test 'cl-test::last.error.3)
  (rt:do-test 'cl-test::last.error.4)
  (rt:do-test 'cl-test::last.error.5)
  (rt:do-test 'cl-test::last.error.6)
  (rt:do-test 'cl-test::last.error.7)
  (rt:do-test 'cl-test::last.error.8))

(defun test-butlast ()
  (rt:do-test 'cl-test::butlast.1)
  (rt:do-test 'cl-test::butlast.2)
  (rt:do-test 'cl-test::butlast.3)
  (rt:do-test 'cl-test::butlast.4)
  (rt:do-test 'cl-test::butlast.5)
  (rt:do-test 'cl-test::butlast.6)
  (rt:do-test 'cl-test::butlast.7)
  (rt:do-test 'cl-test::butlast.8)
  (rt:do-test 'cl-test::butlast.9)
  (rt:do-test 'cl-test::butlast.order.1)
  (rt:do-test 'cl-test::butlast.order.2)
  (rt:do-test 'cl-test::butlast.error.1)
  (rt:do-test 'cl-test::butlast.error.2)
  (rt:do-test 'cl-test::butlast.error.3)
  (rt:do-test 'cl-test::butlast.error.4)
  (rt:do-test 'cl-test::butlast.error.5))
