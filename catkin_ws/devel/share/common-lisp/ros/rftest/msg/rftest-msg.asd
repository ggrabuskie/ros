
(cl:in-package :asdf)

(defsystem "rftest-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Mobility" :depends-on ("_package_Mobility"))
    (:file "_package_Mobility" :depends-on ("_package"))
  ))