(cl:in-package #:constrictor-test)

(defun test-nsubst-if ()
  (rt:do-test 'cl-test::nsubst-if.1)
  (rt:do-test 'cl-test::nsubst-if.2)
  (rt:do-test 'cl-test::nsubst-if.3)
  (rt:do-test 'cl-test::nsubst-if.4)
  (rt:do-test 'cl-test::nsubst-if.5)
  (rt:do-test 'cl-test::nsubst-if.6)
  (rt:do-test 'cl-test::nsubst-if.7)
  (rt:do-test 'cl-test::nsubst-if.8)
  (rt:do-test 'cl-test::nsubst-if.allow-other-keys.1)
  (rt:do-test 'cl-test::nsubst-if.allow-other-keys.2)
  (rt:do-test 'cl-test::nsubst-if.allow-other-keys.3)
  (rt:do-test 'cl-test::nsubst-if.allow-other-keys.4)
  (rt:do-test 'cl-test::nsubst-if.allow-other-keys.5)
  (rt:do-test 'cl-test::nsubst-if.keywords.6)
  (rt:do-test 'cl-test::nsubst-if.error.1)
  (rt:do-test 'cl-test::nsubst-if.error.2)
  (rt:do-test 'cl-test::nsubst-if.error.3)
  (rt:do-test 'cl-test::nsubst-if.error.4)
  (rt:do-test 'cl-test::nsubst-if.error.5)
  (rt:do-test 'cl-test::nsubst-if.error.6)
  (rt:do-test 'cl-test::nsubst-if.error.7)
  (rt:do-test 'cl-test::nsubst-if.error.8))
