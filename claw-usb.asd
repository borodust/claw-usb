(asdf:defsystem :claw-usb
  :description "Thin bindings over libusb"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:claw-usb-bindings))


(asdf:defsystem :claw-usb/wrapper
  :description "Wrapper generator for libusb"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :uiop :cffi :claw-utils :claw)
  :pathname "src/"
  :serial t
  :components ((:file "claw")
               (:module :usb-includes :pathname "lib/usb/")))


(asdf:defsystem :claw-usb/example
  :description "Example for claw-usb"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :uiop :claw-usb :cffi-c-ref)
  :pathname "example/"
  :serial t
  :components ((:file "example")))
