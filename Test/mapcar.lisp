(cl:in-package #:constrictor-test)

(defun test-mapcar ()
  (rt:do-test 'cl-test::mapcar.1)
  (rt:do-test 'cl-test::mapcar.2)
  (rt:do-test 'cl-test::mapcar.3)
  (rt:do-test 'cl-test::mapcar.4)
  (rt:do-test 'cl-test::mapcar.5)
  (rt:do-test 'cl-test::mapcar.6)
  (rt:do-test 'cl-test::mapcar.order.1)
  (rt:do-test 'cl-test::mapcar.error.1)
  (rt:do-test 'cl-test::mapcar.error.2)
  (rt:do-test 'cl-test::mapcar.error.3)
  (rt:do-test 'cl-test::mapcar.error.4)
  (rt:do-test 'cl-test::mapcar.error.5)
  (rt:do-test 'cl-test::mapcar.error.6)
  (rt:do-test 'cl-test::mapcar.error.7)
  (rt:do-test 'cl-test::mapcar.error.8))