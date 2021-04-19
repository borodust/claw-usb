(cl:defpackage :usb.example
  (:use :cl)
  (:export #:run))
(cl:in-package :usb.example)

;;;
;;; Adapted from https://github.com/libusb/libusb/blob/v1.0.24/examples/listdevs.c
;;;


(defun print-device-info (device-ptr)
  (cffi-c-ref:c-with ((descriptor (:struct %usb:device-descriptor)))
    (when (< (%usb:get-device-descriptor device-ptr (descriptor &)) 0)
      (error "Failed to get device descriptor"))
    (format t "~%USB Device [~A:~A]" (descriptor :id-vendor) (descriptor :id-product))))


(defun print-devices (ctx)
  (cffi-c-ref:c-with ((device-list-ptr (:pointer :pointer)))
    (let ((count (%usb:get-device-list ctx (device-list-ptr &))))
      (when (< count 0)
        (error "Failed to get device list: ~A" count))
      (unwind-protect
           (loop for idx from 0 below count
                 do (print-device-info (device-list-ptr * idx)))
        (%usb:free-device-list device-list-ptr 1)))))


(defun run ()
  "Don't forget to load libusb before running thing function, e.g.

  (cffi:load-foreign-library \"libusb-1.0.so\")"

  (let ((ctx (cffi:null-pointer)))
    (unless (= (%usb:init ctx) 0)
      (error "Failed to initialize libusb"))
    (unwind-protect
         (print-devices ctx)
      (%usb:exit ctx))))
