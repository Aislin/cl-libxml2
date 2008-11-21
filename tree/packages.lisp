;; package.lisp

(defpackage :libxml2.private
  (:use :cl)
  (:export
   :pointer
   :%xmlDocPtr
   :%xmlNodeSetPtr
   :%xmlDictPtr
   :%xmlHashTablePtr
   :%charPtr
   :%xmlCharPtr
   :%xmlNodePtr
   :%xmlNsPtr
   :defwrapper
   :wrapper-slot-value
   ))

(defpackage :libxml2.tree
  (:use :cl :iter :cffi :libxml2.private)
  (:export
   :node
   :document
   :ns
   :attribute

   :make-document
   :make-element
   :make-text
   :make-comment
   :make-process-instruction
   :copy
   
   :parse
   :with-custom-resolvers
   :resolve-string
   :resolve-file/uri
   :resolve-stream
   :serialize
   :release

   :base-url
   
   :with-libxml2-object
   :with-parse-document
   :process-xinclude


   :insert-child-before
   :insert-child-after
   :append-child
   :prepend-child

   :remove-child
   :replace-child
   :detach

   :node-type
   :root
   :parent
   :text-content
   :first-child
   :last-child
   :next-sibling
   :prev-sibling
   :local-name
   :namespace-uri
   :namespace-prefix

   :node-filter
   :find-node

   :attribute-value
   :attribute-node-value
   :remove-attribute
   :with-attributes
   ))
