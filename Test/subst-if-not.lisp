(cl:in-package #:constrictor-test)

(defun test-subst-if-not ()
  (rt:do-test 'cl-test::subst-if-not.1)
  (rt:do-test 'cl-test::subst-if-not.2)
  (rt:do-test 'cl-test::subst-if-not.3)
  (rt:do-test 'cl-test::subst-if-not.4)
  (rt:do-test 'cl-test::subst-if-not.5)
  (rt:do-test 'cl-test::subst-if-not.7)
  (rt:do-test 'cl-test::subst-if-not.allow-other-keys.1)
  (rt:do-test 'cl-test::subst-if-not.allow-other-keys.2)
  (rt:do-test 'cl-test::subst-if-not.allow-other-keys.3)
  (rt:do-test 'cl-test::subst-if-not.allow-other-keys.4)
  (rt:do-test 'cl-test::subst-if-not.allow-other-keys.5)
  (rt:do-test 'cl-test::subst-if-not.keywords.6)
  (rt:do-test 'cl-test::subst-if-not.error.1)
  (rt:do-test 'cl-test::subst-if-not.error.2)
  (rt:do-test 'cl-test::subst-if-not.error.3)
  (rt:do-test 'cl-test::subst-if-not.error.4)
  (rt:do-test 'cl-test::subst-if-not.error.5)
  (rt:do-test 'cl-test::subst-if-not.error.6)
  (rt:do-test 'cl-test::subst-if-not.error.7)
  (rt:do-test 'cl-test::subst-if-not.error.8))
