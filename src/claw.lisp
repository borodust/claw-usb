(claw:defwrapper (:claw-usb/wrapper
                  (:headers "libusb/libusb.h")
                  (:includes :usb-includes)
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu"))
                  (:persistent :claw-usb-bindings
                   :asd-path "../claw-usb-bindings.asd"
                   :bindings-path "../bindings/")
                  (:include-definitions "^(libusb|LIBUSB)_\\w+" "\\w*_t$"))
  :in-package :%usb
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :symbolicate-names (:in-pipeline
                      (:by-removing-prefixes "libusb_" "LIBUSB_")))
