
(cl:in-package :asdf)

(defsystem "example-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Telemetry" :depends-on ("_package_Telemetry"))
    (:file "_package_Telemetry" :depends-on ("_package"))
  ))