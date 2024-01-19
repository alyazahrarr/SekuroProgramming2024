
(cl:in-package :asdf)

(defsystem "tugas4-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Phytagoras" :depends-on ("_package_Phytagoras"))
    (:file "_package_Phytagoras" :depends-on ("_package"))
  ))