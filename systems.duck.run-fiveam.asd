;;;;
;;;; Test system definition
;;;;
(asdf:defsystem "systems.duck.run-fiveam"
  :description "Base system for the run-fiveam test action"
  :components ())

(asdf:defsystem "systems.duck.run-fiveam/test"
  :description "Example test system for the run-fiveam action"
  :author "Keith Johnson <quack@duck.systems>"
  :license "MIT"
  :depends-on ("fiveam")
  :components ((:file "test")))
