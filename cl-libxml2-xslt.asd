;; cl-libxml2-xslt.asd

(defsystem :cl-libxml2-xslt
  :version "0.0.1"
  :depends-on (#:cffi #:iterate #:cl-libxml2)
  :components
  ((:module :xslt
            :components
            ((:file "packages")
             (:file "stylesheet" :depends-on ("packages"))))))