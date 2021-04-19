(uiop:define-package :%usb (:use))
(uiop:define-package :claw-usb-bindings~pristine (:use :cl))
(common-lisp:in-package :claw-usb-bindings~pristine)

(defparameter %usb::+api-version+ 16777480)

(defparameter %usb::+bt-container-id-size+ 20)

(defparameter %usb::+bt-ss-usb-device-capability-size+ 10)

(defparameter %usb::+bt-usb-2-0-extension-size+ 7)

(defparameter %usb::+call+ nil)

(defparameter %usb::+control-setup-size+ 8)

(defparameter %usb::+dt-bos-max-size+ 42)

(defparameter %usb::+dt-bos-size+ 5)

(defparameter %usb::+dt-config-size+ 9)

(defparameter %usb::+dt-device-capability-size+ 3)

(defparameter %usb::+dt-device-size+ 18)

(defparameter %usb::+dt-endpoint-audio-size+ 9)

(defparameter %usb::+dt-endpoint-size+ 7)

(defparameter %usb::+dt-hub-nonvar-size+ 7)

(defparameter %usb::+dt-interface-size+ 9)

(defparameter %usb::+dt-ss-endpoint-companion-size+ 6)

(defparameter %usb::+endpoint-address-mask+ 15)

(defparameter %usb::+endpoint-dir-mask+ 128)

(defparameter %usb::+error-count+ 14)

(defparameter %usb::+h+ nil)

(defparameter %usb::+hotplug-match-any+ -1)

(defparameter %usb::+hotplug-no-flags+ 0)

(defparameter %usb::+iso-sync-type-mask+ 12)

(defparameter %usb::+iso-usage-type-mask+ 48)

(defparameter %usb::+packed+ nil)

(defparameter %usb::+transfer-type-mask+ 3)

(defparameter %usb::+%%have-pthread-attr-t+ 1)

(defparameter %usb::+%%need-size-t+ nil)

(defparameter %usb::+%%ptr-t+ nil)

(defparameter %usb::+le16-to-cpu+ nil)

(cffi:defcenum (%usb::bos-type :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:509:6"
               (:wireless-usb-device-capability 1)
               (:usb-2-0-extension 2)
               (:ss-usb-device-capability 3)
               (:container-id 4))

(cffi:defcenum (%usb::capability :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:1288:6"
               (:has-capability 0)
               (:has-hotplug 1)
               (:has-hid-access 256)
               (:supports-detach-kernel-driver 257))

(cffi:defcenum (%usb::class-code :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:181:6"
               (:per-interface 0)
               (:audio 1)
               (:comm 2)
               (:hid 3)
               (:physical 5)
               (:image 6)
               (:ptp 6)
               (:printer 7)
               (:mass-storage 8)
               (:hub 9)
               (:data 10)
               (:smart-card 11)
               (:content-security 13)
               (:video 14)
               (:personal-healthcare 15)
               (:diagnostic-device 220)
               (:wireless 224)
               (:miscellaneous 239)
               (:application 254)
               (:vendor-spec 255))

(cffi:defcenum (%usb::descriptor-type :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:246:6"
               (:device 1)
               (:config 2)
               (:string 3)
               (:interface 4)
               (:endpoint 5)
               (:bos 15)
               (:device-capability 16)
               (:hid 33)
               (:report 34)
               (:physical 35)
               (:hub 41)
               (:superspeed-hub 42)
               (:ss-endpoint-companion 48))

(cffi:defcenum (%usb::endpoint-direction :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:317:6"
               (:out 0)
               (:in 128))

(cffi:defcenum (%usb::endpoint-transfer-type :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:331:6"
               (:control 0)
               (:isochronous 1)
               (:bulk 2)
               (:interrupt 3))

(cffi:defcenum (%usb::error :int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:1047:6"
               (:success 0)
               (:error-io -1)
               (:error-invalid-param -2)
               (:error-access -3)
               (:error-no-device -4)
               (:error-not-found -5)
               (:error-busy -6)
               (:error-timeout -7)
               (:error-overflow -8)
               (:error-pipe -9)
               (:error-interrupted -10)
               (:error-no-mem -11)
               (:error-not-supported -12)
               (:error-other -99))

(cffi:defcenum (%usb::iso-sync-type :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:436:6"
               (:none 0)
               (:async 1)
               (:adaptive 2)
               (:sync 3))

(cffi:defcenum (%usb::iso-usage-type :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:457:6"
               (:data 0)
               (:feedback 1)
               (:implicit 2))

(cffi:defbitfield (%usb::log-cb-mode :unsigned-int)
                  "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:1330:6"
                  (:global 1)
                  (:context 2))

(cffi:defcenum (%usb::log-level :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:1309:6"
               (:none 0)
               (:error 1)
               (:warning 2)
               (:info 3)
               (:debug 4))

(cffi:defcenum (%usb::option :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:2062:6"
               (:log-level 0)
               (:use-usbdk 1)
               (:weak-authority 2))

(cffi:defcenum (%usb::request-recipient :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:415:6"
               (:device 0)
               (:interface 1)
               (:endpoint 2)
               (:other 3))

(cffi:defcenum (%usb::request-type :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:397:6"
               (:standard 0)
               (:class 32)
               (:vendor 64)
               (:reserved 96))

(cffi:defcenum (%usb::speed :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:1020:6"
               (:unknown 0)
               (:low 1)
               (:full 2)
               (:high 3)
               (:super 4)
               (:super-plus 5))

(cffi:defbitfield (%usb::ss-usb-device-capability-attributes
                   :unsigned-int)
                  "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:501:6"
                  (:bm-ltm-support 2))

(cffi:defcenum (%usb::standard-request :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:347:6"
               (:request-get-status 0)
               (:request-clear-feature 1)
               (:request-set-feature 3)
               (:request-set-address 5)
               (:request-get-descriptor 6)
               (:request-set-descriptor 7)
               (:request-get-configuration 8)
               (:request-set-configuration 9)
               (:request-get-interface 10)
               (:request-set-interface 11)
               (:request-synch-frame 12)
               (:request-set-sel 48)
               (:set-isoch-delay 49))

(cffi:defbitfield (%usb::supported-speed :unsigned-int)
                  "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:472:6"
                  (:low-speed-operation 1)
                  (:full-speed-operation 2)
                  (:high-speed-operation 4)
                  (:super-speed-operation 8))

(cffi:defbitfield (%usb::transfer-flags :unsigned-int)
                  "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:1148:6"
                  (:short-not-ok 1)
                  (:free-buffer 2)
                  (:free-transfer 4)
                  (:add-zero-packet 8))

(cffi:defcenum (%usb::transfer-status :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:1118:6"
               (:completed 0)
               (:error 1)
               (:timed-out 2)
               (:cancelled 3)
               (:stall 4)
               (:no-device 5)
               (:overflow 6))

(cffi:defcenum (%usb::transfer-type :unsigned-int)
               "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:1099:6"
               (:control 0)
               (:isochronous 1)
               (:bulk 2)
               (:interrupt 3)
               (:bulk-stream 4))

(cffi:defbitfield (%usb::usb-2-0-extension-attributes :unsigned-int)
                  "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:491:6"
                  (:bm-lpm-support 2))

(cffi:defcstruct (%usb::device-handle :size 0))

(cffi:defctype %usb::device-handle (:struct %usb::device-handle))

(cffi:defctype %usb::uint32-t :unsigned-int)

(declaim (inline %usb::alloc-streams))

(cffi:defcfun ("libusb_alloc_streams" %usb::alloc-streams)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::num-streams %usb::uint32-t)
              (%usb::endpoints (:pointer :unsigned-char))
              (%usb::num-endpoints :int))

(cffi:defctype %usb::uint8-t :unsigned-char)

(cffi:defcstruct (%usb::iso-packet-descriptor :size 12)
                 (%usb::length :unsigned-int :offset 0)
                 (%usb::actual-length :unsigned-int :offset 4)
                 (%usb::status %usb::transfer-status :offset 8))

(cffi:defcstruct (%usb::transfer :size 64)
                 (%usb::dev-handle (:pointer %usb::device-handle)
                  :offset 0)
                 (%usb::flags %usb::uint8-t :offset 8)
                 (%usb::endpoint :unsigned-char :offset 9)
                 (%usb::type :unsigned-char :offset 10)
                 (%usb::timeout :unsigned-int :offset 12)
                 (%usb::status %usb::transfer-status :offset 16)
                 (%usb::length :int :offset 20)
                 (%usb::actual-length :int :offset 24)
                 (%usb::user-data (:pointer :void) :offset 40)
                 (%usb::buffer (:pointer :unsigned-char) :offset 48)
                 (%usb::num-iso-packets :int :offset 56)
                 (%usb::iso-packet-desc
                  (:pointer (:struct %usb::iso-packet-descriptor))
                  :offset 60))

(declaim (inline %usb::alloc-transfer))

(cffi:defcfun ("libusb_alloc_transfer" %usb::alloc-transfer)
              (:pointer (:struct %usb::transfer))
              (%usb::iso-packets :int))

(declaim (inline %usb::attach-kernel-driver))

(cffi:defcfun ("libusb_attach_kernel_driver"
               %usb::attach-kernel-driver)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::interface-number :int))

(declaim (inline %usb::bulk-transfer))

(cffi:defcfun ("libusb_bulk_transfer" %usb::bulk-transfer)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::endpoint :unsigned-char)
              (%usb::data (:pointer :unsigned-char))
              (%usb::length :int)
              (%usb::actual-length (:pointer :int))
              (%usb::timeout :unsigned-int))

(declaim (inline %usb::cancel-transfer))

(cffi:defcfun ("libusb_cancel_transfer" %usb::cancel-transfer)
              :int
              (%usb::transfer (:pointer (:struct %usb::transfer))))

(declaim (inline %usb::claim-interface))

(cffi:defcfun ("libusb_claim_interface" %usb::claim-interface)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::interface-number :int))

(declaim (inline %usb::clear-halt))

(cffi:defcfun ("libusb_clear_halt" %usb::clear-halt)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::endpoint :unsigned-char))

(declaim (inline %usb::close))

(cffi:defcfun ("libusb_close" %usb::close)
              :void
              (%usb::dev-handle (:pointer %usb::device-handle)))

(cffi:defctype %usb::uint16-t :unsigned-short)

(declaim (inline %usb::control-transfer))

(cffi:defcfun ("libusb_control_transfer" %usb::control-transfer)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::request-type %usb::uint8-t)
              (%usb::b-request %usb::uint8-t)
              (%usb::w-value %usb::uint16-t)
              (%usb::w-index %usb::uint16-t)
              (%usb::data (:pointer :unsigned-char))
              (%usb::w-length %usb::uint16-t)
              (%usb::timeout :unsigned-int))

(declaim (inline %usb::detach-kernel-driver))

(cffi:defcfun ("libusb_detach_kernel_driver"
               %usb::detach-kernel-driver)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::interface-number :int))

(cffi:defctype %usb::size-t :unsigned-long)

(declaim (inline %usb::dev-mem-alloc))

(cffi:defcfun ("libusb_dev_mem_alloc" %usb::dev-mem-alloc)
              (:pointer :unsigned-char)
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::length %usb::size-t))

(declaim (inline %usb::dev-mem-free))

(cffi:defcfun ("libusb_dev_mem_free" %usb::dev-mem-free)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::buffer (:pointer :unsigned-char))
              (%usb::length %usb::size-t))

(declaim (inline %usb::error-name))

(cffi:defcfun ("libusb_error_name" %usb::error-name)
              :string
              (%usb::errcode :int))

(cffi:defcstruct (%usb::context :size 0))

(cffi:defctype %usb::context (:struct %usb::context))

(declaim (inline %usb::event-handler-active))

(cffi:defcfun ("libusb_event_handler_active"
               %usb::event-handler-active)
              :int
              (%usb::ctx (:pointer %usb::context)))

(declaim (inline %usb::event-handling-ok))

(cffi:defcfun ("libusb_event_handling_ok" %usb::event-handling-ok)
              :int
              (%usb::ctx (:pointer %usb::context)))

(declaim (inline %usb::exit))

(cffi:defcfun ("libusb_exit" %usb::exit)
              :void
              (%usb::ctx (:pointer %usb::context)))

(cffi:defcstruct (%usb::bos-dev-capability-descriptor :size 3)
                 (%usb::b-length %usb::uint8-t :offset 0)
                 (%usb::b-descriptor-type %usb::uint8-t :offset 1)
                 (%usb::b-dev-capability-type %usb::uint8-t :offset
                  2)
                 (%usb::dev-capability-data (:pointer %usb::uint8-t)
                  :offset 3))

(cffi:defcstruct (%usb::bos-descriptor :size 8)
                 (%usb::b-length %usb::uint8-t :offset 0)
                 (%usb::b-descriptor-type %usb::uint8-t :offset 1)
                 (%usb::w-total-length %usb::uint16-t :offset 2)
                 (%usb::b-num-device-caps %usb::uint8-t :offset 4)
                 (%usb::dev-capability
                  (:pointer
                   (:pointer
                    (:struct %usb::bos-dev-capability-descriptor)))
                  :offset 8))

(declaim (inline %usb::free-bos-descriptor))

(cffi:defcfun ("libusb_free_bos_descriptor"
               %usb::free-bos-descriptor)
              :void
              (%usb::bos (:pointer (:struct %usb::bos-descriptor))))

(cffi:defcstruct (%usb::endpoint-descriptor :size 32)
                 (%usb::b-length %usb::uint8-t :offset 0)
                 (%usb::b-descriptor-type %usb::uint8-t :offset 1)
                 (%usb::b-endpoint-address %usb::uint8-t :offset 2)
                 (%usb::bm-attributes %usb::uint8-t :offset 3)
                 (%usb::w-max-packet-size %usb::uint16-t :offset 4)
                 (%usb::b-interval %usb::uint8-t :offset 6)
                 (%usb::b-refresh %usb::uint8-t :offset 7)
                 (%usb::b-synch-address %usb::uint8-t :offset 8)
                 (%usb::extra (:pointer :unsigned-char) :offset 16)
                 (%usb::extra-length :int :offset 24))

(cffi:defcstruct (%usb::interface-descriptor :size 40)
                 (%usb::b-length %usb::uint8-t :offset 0)
                 (%usb::b-descriptor-type %usb::uint8-t :offset 1)
                 (%usb::b-interface-number %usb::uint8-t :offset 2)
                 (%usb::b-alternate-setting %usb::uint8-t :offset 3)
                 (%usb::b-num-endpoints %usb::uint8-t :offset 4)
                 (%usb::b-interface-class %usb::uint8-t :offset 5)
                 (%usb::b-interface-sub-class %usb::uint8-t :offset
                  6)
                 (%usb::b-interface-protocol %usb::uint8-t :offset 7)
                 (%usb::i-interface %usb::uint8-t :offset 8)
                 (%usb::endpoint
                  (:pointer (:struct %usb::endpoint-descriptor))
                  :offset 16)
                 (%usb::extra (:pointer :unsigned-char) :offset 24)
                 (%usb::extra-length :int :offset 32))

(cffi:defcstruct (%usb::interface :size 16)
                 (%usb::altsetting
                  (:pointer (:struct %usb::interface-descriptor))
                  :offset 0)
                 (%usb::num-altsetting :int :offset 8))

(cffi:defcstruct (%usb::config-descriptor :size 40)
                 (%usb::b-length %usb::uint8-t :offset 0)
                 (%usb::b-descriptor-type %usb::uint8-t :offset 1)
                 (%usb::w-total-length %usb::uint16-t :offset 2)
                 (%usb::b-num-interfaces %usb::uint8-t :offset 4)
                 (%usb::b-configuration-value %usb::uint8-t :offset
                  5)
                 (%usb::i-configuration %usb::uint8-t :offset 6)
                 (%usb::bm-attributes %usb::uint8-t :offset 7)
                 (%usb::max-power %usb::uint8-t :offset 8)
                 (%usb::interface
                  (:pointer (:struct %usb::interface)) :offset 16)
                 (%usb::extra (:pointer :unsigned-char) :offset 24)
                 (%usb::extra-length :int :offset 32))

(declaim (inline %usb::free-config-descriptor))

(cffi:defcfun ("libusb_free_config_descriptor"
               %usb::free-config-descriptor)
              :void
              (%usb::config
               (:pointer (:struct %usb::config-descriptor))))

(cffi:defcstruct (%usb::container-id-descriptor :size 20)
                 (%usb::b-length %usb::uint8-t :offset 0)
                 (%usb::b-descriptor-type %usb::uint8-t :offset 1)
                 (%usb::b-dev-capability-type %usb::uint8-t :offset
                  2)
                 (%usb::b-reserved %usb::uint8-t :offset 3)
                 (%usb::container-id %usb::uint8-t :count 16 :offset
                  4))

(declaim (inline %usb::free-container-id-descriptor))

(cffi:defcfun ("libusb_free_container_id_descriptor"
               %usb::free-container-id-descriptor)
              :void
              (%usb::container-id
               (:pointer (:struct %usb::container-id-descriptor))))

(cffi:defcstruct (%usb::device :size 0))

(cffi:defctype %usb::device (:struct %usb::device))

(declaim (inline %usb::free-device-list))

(cffi:defcfun ("libusb_free_device_list" %usb::free-device-list)
              :void
              (%usb::list (:pointer (:pointer %usb::device)))
              (%usb::unref-devices :int))

(cffi:defcstruct (%usb::pollfd :size 8)
                 (%usb::fd :int :offset 0)
                 (%usb::events :short :offset 4))

(declaim (inline %usb::free-pollfds))

(cffi:defcfun ("libusb_free_pollfds" %usb::free-pollfds)
              :void
              (%usb::pollfds
               (:pointer (:pointer (:struct %usb::pollfd)))))

(cffi:defcstruct (%usb::ss-endpoint-companion-descriptor :size 6)
                 (%usb::b-length %usb::uint8-t :offset 0)
                 (%usb::b-descriptor-type %usb::uint8-t :offset 1)
                 (%usb::b-max-burst %usb::uint8-t :offset 2)
                 (%usb::bm-attributes %usb::uint8-t :offset 3)
                 (%usb::w-bytes-per-interval %usb::uint16-t :offset
                  4))

(declaim (inline %usb::free-ss-endpoint-companion-descriptor))

(cffi:defcfun ("libusb_free_ss_endpoint_companion_descriptor"
               %usb::free-ss-endpoint-companion-descriptor)
              :void
              (%usb::ep-comp
               (:pointer
                (:struct %usb::ss-endpoint-companion-descriptor))))

(cffi:defcstruct (%usb::ss-usb-device-capability-descriptor :size 10)
                 (%usb::b-length %usb::uint8-t :offset 0)
                 (%usb::b-descriptor-type %usb::uint8-t :offset 1)
                 (%usb::b-dev-capability-type %usb::uint8-t :offset
                  2)
                 (%usb::bm-attributes %usb::uint8-t :offset 3)
                 (%usb::w-speed-supported %usb::uint16-t :offset 4)
                 (%usb::b-functionality-support %usb::uint8-t :offset
                  6)
                 (%usb::b-u1dev-exit-lat %usb::uint8-t :offset 7)
                 (%usb::b-u2dev-exit-lat %usb::uint16-t :offset 8))

(declaim (inline %usb::free-ss-usb-device-capability-descriptor))

(cffi:defcfun ("libusb_free_ss_usb_device_capability_descriptor"
               %usb::free-ss-usb-device-capability-descriptor)
              :void
              (%usb::ss-usb-device-cap
               (:pointer
                (:struct %usb::ss-usb-device-capability-descriptor))))

(declaim (inline %usb::free-streams))

(cffi:defcfun ("libusb_free_streams" %usb::free-streams)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::endpoints (:pointer :unsigned-char))
              (%usb::num-endpoints :int))

(declaim (inline %usb::free-transfer))

(cffi:defcfun ("libusb_free_transfer" %usb::free-transfer)
              :void
              (%usb::transfer (:pointer (:struct %usb::transfer))))

(cffi:defcstruct (%usb::usb-2-0-extension-descriptor :size 8)
                 (%usb::b-length %usb::uint8-t :offset 0)
                 (%usb::b-descriptor-type %usb::uint8-t :offset 1)
                 (%usb::b-dev-capability-type %usb::uint8-t :offset
                  2)
                 (%usb::bm-attributes %usb::uint32-t :offset 4))

(declaim (inline %usb::free-usb-2-0-extension-descriptor))

(cffi:defcfun ("libusb_free_usb_2_0_extension_descriptor"
               %usb::free-usb-2-0-extension-descriptor)
              :void
              (%usb::usb-2-0-extension
               (:pointer
                (:struct %usb::usb-2-0-extension-descriptor))))

(declaim (inline %usb::get-active-config-descriptor))

(cffi:defcfun ("libusb_get_active_config_descriptor"
               %usb::get-active-config-descriptor)
              :int
              (%usb::dev (:pointer %usb::device))
              (%usb::config
               (:pointer
                (:pointer (:struct %usb::config-descriptor)))))

(declaim (inline %usb::get-bos-descriptor))

(cffi:defcfun ("libusb_get_bos_descriptor" %usb::get-bos-descriptor)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::bos
               (:pointer (:pointer (:struct %usb::bos-descriptor)))))

(declaim (inline %usb::get-bus-number))

(cffi:defcfun ("libusb_get_bus_number" %usb::get-bus-number)
              %usb::uint8-t
              (%usb::dev (:pointer %usb::device)))

(declaim (inline %usb::get-config-descriptor))

(cffi:defcfun ("libusb_get_config_descriptor"
               %usb::get-config-descriptor)
              :int
              (%usb::dev (:pointer %usb::device))
              (%usb::config-index %usb::uint8-t)
              (%usb::config
               (:pointer
                (:pointer (:struct %usb::config-descriptor)))))

(declaim (inline %usb::get-config-descriptor-by-value))

(cffi:defcfun ("libusb_get_config_descriptor_by_value"
               %usb::get-config-descriptor-by-value)
              :int
              (%usb::dev (:pointer %usb::device))
              (%usb::b-configuration-value %usb::uint8-t)
              (%usb::config
               (:pointer
                (:pointer (:struct %usb::config-descriptor)))))

(declaim (inline %usb::get-configuration))

(cffi:defcfun ("libusb_get_configuration" %usb::get-configuration)
              :int
              (%usb::dev (:pointer %usb::device-handle))
              (%usb::config (:pointer :int)))

(declaim (inline %usb::get-container-id-descriptor))

(cffi:defcfun ("libusb_get_container_id_descriptor"
               %usb::get-container-id-descriptor)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::dev-cap
               (:pointer
                (:struct %usb::bos-dev-capability-descriptor)))
              (%usb::container-id
               (:pointer
                (:pointer (:struct %usb::container-id-descriptor)))))

(declaim (inline %usb::get-device))

(cffi:defcfun ("libusb_get_device" %usb::get-device)
              (:pointer %usb::device)
              (%usb::dev-handle (:pointer %usb::device-handle)))

(declaim (inline %usb::get-device-address))

(cffi:defcfun ("libusb_get_device_address" %usb::get-device-address)
              %usb::uint8-t
              (%usb::dev (:pointer %usb::device)))

(cffi:defcstruct (%usb::device-descriptor :size 18)
                 (%usb::b-length %usb::uint8-t :offset 0)
                 (%usb::b-descriptor-type %usb::uint8-t :offset 1)
                 (%usb::bcd-usb %usb::uint16-t :offset 2)
                 (%usb::b-device-class %usb::uint8-t :offset 4)
                 (%usb::b-device-sub-class %usb::uint8-t :offset 5)
                 (%usb::b-device-protocol %usb::uint8-t :offset 6)
                 (%usb::b-max-packet-size0 %usb::uint8-t :offset 7)
                 (%usb::id-vendor %usb::uint16-t :offset 8)
                 (%usb::id-product %usb::uint16-t :offset 10)
                 (%usb::bcd-device %usb::uint16-t :offset 12)
                 (%usb::i-manufacturer %usb::uint8-t :offset 14)
                 (%usb::i-product %usb::uint8-t :offset 15)
                 (%usb::i-serial-number %usb::uint8-t :offset 16)
                 (%usb::b-num-configurations %usb::uint8-t :offset
                  17))

(declaim (inline %usb::get-device-descriptor))

(cffi:defcfun ("libusb_get_device_descriptor"
               %usb::get-device-descriptor)
              :int
              (%usb::dev (:pointer %usb::device))
              (%usb::desc
               (:pointer (:struct %usb::device-descriptor))))

(cffi:defctype %usb::ssize-t :long)

(declaim (inline %usb::get-device-list))

(cffi:defcfun ("libusb_get_device_list" %usb::get-device-list)
              %usb::ssize-t
              (%usb::ctx (:pointer %usb::context))
              (%usb::list
               (:pointer (:pointer (:pointer %usb::device)))))

(declaim (inline %usb::get-device-speed))

(cffi:defcfun ("libusb_get_device_speed" %usb::get-device-speed)
              :int
              (%usb::dev (:pointer %usb::device)))

(declaim (inline %usb::get-max-iso-packet-size))

(cffi:defcfun ("libusb_get_max_iso_packet_size"
               %usb::get-max-iso-packet-size)
              :int
              (%usb::dev (:pointer %usb::device))
              (%usb::endpoint :unsigned-char))

(declaim (inline %usb::get-max-packet-size))

(cffi:defcfun ("libusb_get_max_packet_size"
               %usb::get-max-packet-size)
              :int
              (%usb::dev (:pointer %usb::device))
              (%usb::endpoint :unsigned-char))

(cffi:defctype %usb::%%time-t :long)

(cffi:defctype %usb::%%suseconds-t :long)

(cffi:defcstruct (%usb::timeval :size 16)
                 (%usb::tv-sec %usb::%%time-t :offset 0)
                 (%usb::tv-usec %usb::%%suseconds-t :offset 8))

(declaim (inline %usb::get-next-timeout))

(cffi:defcfun ("libusb_get_next_timeout" %usb::get-next-timeout)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::tv (:pointer (:struct %usb::timeval))))

(declaim (inline %usb::get-parent))

(cffi:defcfun ("libusb_get_parent" %usb::get-parent)
              (:pointer %usb::device)
              (%usb::dev (:pointer %usb::device)))

(declaim (inline %usb::get-pollfds))

(cffi:defcfun ("libusb_get_pollfds" %usb::get-pollfds)
              (:pointer (:pointer (:struct %usb::pollfd)))
              (%usb::ctx (:pointer %usb::context)))

(declaim (inline %usb::get-port-number))

(cffi:defcfun ("libusb_get_port_number" %usb::get-port-number)
              %usb::uint8-t
              (%usb::dev (:pointer %usb::device)))

(declaim (inline %usb::get-port-numbers))

(cffi:defcfun ("libusb_get_port_numbers" %usb::get-port-numbers)
              :int
              (%usb::dev (:pointer %usb::device))
              (%usb::port-numbers (:pointer %usb::uint8-t))
              (%usb::port-numbers-len :int))

(declaim (inline %usb::get-port-path))

(cffi:defcfun ("libusb_get_port_path" %usb::get-port-path)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::dev (:pointer %usb::device))
              (%usb::path (:pointer %usb::uint8-t))
              (%usb::path-length %usb::uint8-t))

(declaim (inline %usb::get-ss-endpoint-companion-descriptor))

(cffi:defcfun ("libusb_get_ss_endpoint_companion_descriptor"
               %usb::get-ss-endpoint-companion-descriptor)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::endpoint
               (:pointer (:struct %usb::endpoint-descriptor)))
              (%usb::ep-comp
               (:pointer
                (:pointer
                 (:struct %usb::ss-endpoint-companion-descriptor)))))

(declaim (inline %usb::get-ss-usb-device-capability-descriptor))

(cffi:defcfun ("libusb_get_ss_usb_device_capability_descriptor"
               %usb::get-ss-usb-device-capability-descriptor)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::dev-cap
               (:pointer
                (:struct %usb::bos-dev-capability-descriptor)))
              (%usb::ss-usb-device-cap
               (:pointer
                (:pointer
                 (:struct
                  %usb::ss-usb-device-capability-descriptor)))))

(declaim (inline %usb::get-string-descriptor-ascii))

(cffi:defcfun ("libusb_get_string_descriptor_ascii"
               %usb::get-string-descriptor-ascii)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::desc-index %usb::uint8-t)
              (%usb::data (:pointer :unsigned-char))
              (%usb::length :int))

(declaim (inline %usb::get-usb-2-0-extension-descriptor))

(cffi:defcfun ("libusb_get_usb_2_0_extension_descriptor"
               %usb::get-usb-2-0-extension-descriptor)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::dev-cap
               (:pointer
                (:struct %usb::bos-dev-capability-descriptor)))
              (%usb::usb-2-0-extension
               (:pointer
                (:pointer
                 (:struct %usb::usb-2-0-extension-descriptor)))))

(cffi:defcstruct (%usb::version :size 24)
                 (%usb::major %usb::uint16-t :offset 0)
                 (%usb::minor %usb::uint16-t :offset 2)
                 (%usb::micro %usb::uint16-t :offset 4)
                 (%usb::nano %usb::uint16-t :offset 6)
                 (%usb::rc :string :offset 8)
                 (%usb::describe :string :offset 16))

(declaim (inline %usb::get-version))

(cffi:defcfun ("libusb_get_version" %usb::get-version)
              (:pointer (:struct %usb::version)))

(declaim (inline %usb::handle-events))

(cffi:defcfun ("libusb_handle_events" %usb::handle-events)
              :int
              (%usb::ctx (:pointer %usb::context)))

(declaim (inline %usb::handle-events-completed))

(cffi:defcfun ("libusb_handle_events_completed"
               %usb::handle-events-completed)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::completed (:pointer :int)))

(declaim (inline %usb::handle-events-locked))

(cffi:defcfun ("libusb_handle_events_locked"
               %usb::handle-events-locked)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::tv (:pointer (:struct %usb::timeval))))

(declaim (inline %usb::handle-events-timeout))

(cffi:defcfun ("libusb_handle_events_timeout"
               %usb::handle-events-timeout)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::tv (:pointer (:struct %usb::timeval))))

(declaim (inline %usb::handle-events-timeout-completed))

(cffi:defcfun ("libusb_handle_events_timeout_completed"
               %usb::handle-events-timeout-completed)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::tv (:pointer (:struct %usb::timeval)))
              (%usb::completed (:pointer :int)))

(declaim (inline %usb::has-capability))

(cffi:defcfun ("libusb_has_capability" %usb::has-capability)
              :int
              (%usb::capability %usb::uint32-t))

(cffi:defctype %usb::hotplug-callback-handle :int)

(declaim (inline %usb::hotplug-deregister-callback))

(cffi:defcfun ("libusb_hotplug_deregister_callback"
               %usb::hotplug-deregister-callback)
              :void
              (%usb::ctx (:pointer %usb::context))
              (%usb::callback-handle %usb::hotplug-callback-handle))

(declaim (inline %usb::hotplug-get-user-data))

(cffi:defcfun ("libusb_hotplug_get_user_data"
               %usb::hotplug-get-user-data)
              (:pointer :void)
              (%usb::ctx (:pointer %usb::context))
              (%usb::callback-handle %usb::hotplug-callback-handle))

(cffi:defctype %usb::hotplug-callback-fn (:pointer :pointer))

(declaim (inline %usb::hotplug-register-callback))

(cffi:defcfun ("libusb_hotplug_register_callback"
               %usb::hotplug-register-callback)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::events :int)
              (%usb::flags :int)
              (%usb::vendor-id :int)
              (%usb::product-id :int)
              (%usb::dev-class :int)
              (%usb::cb-fn %usb::hotplug-callback-fn)
              (%usb::user-data (:pointer :void))
              (%usb::callback-handle
               (:pointer %usb::hotplug-callback-handle)))

(declaim (inline %usb::init))

(cffi:defcfun ("libusb_init" %usb::init)
              :int
              (%usb::ctx (:pointer (:pointer %usb::context))))

(declaim (inline %usb::interrupt-event-handler))

(cffi:defcfun ("libusb_interrupt_event_handler"
               %usb::interrupt-event-handler)
              :void
              (%usb::ctx (:pointer %usb::context)))

(declaim (inline %usb::interrupt-transfer))

(cffi:defcfun ("libusb_interrupt_transfer" %usb::interrupt-transfer)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::endpoint :unsigned-char)
              (%usb::data (:pointer :unsigned-char))
              (%usb::length :int)
              (%usb::actual-length (:pointer :int))
              (%usb::timeout :unsigned-int))

(declaim (inline %usb::kernel-driver-active))

(cffi:defcfun ("libusb_kernel_driver_active"
               %usb::kernel-driver-active)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::interface-number :int))

(declaim (inline %usb::lock-event-waiters))

(cffi:defcfun ("libusb_lock_event_waiters" %usb::lock-event-waiters)
              :void
              (%usb::ctx (:pointer %usb::context)))

(declaim (inline %usb::lock-events))

(cffi:defcfun ("libusb_lock_events" %usb::lock-events)
              :void
              (%usb::ctx (:pointer %usb::context)))

(declaim (inline %usb::open))

(cffi:defcfun ("libusb_open" %usb::open)
              :int
              (%usb::dev (:pointer %usb::device))
              (%usb::dev-handle
               (:pointer (:pointer %usb::device-handle))))

(declaim (inline %usb::open-device-with-vid-pid))

(cffi:defcfun ("libusb_open_device_with_vid_pid"
               %usb::open-device-with-vid-pid)
              (:pointer %usb::device-handle)
              (%usb::ctx (:pointer %usb::context))
              (%usb::vendor-id %usb::uint16-t)
              (%usb::product-id %usb::uint16-t))

(declaim (inline %usb::pollfds-handle-timeouts))

(cffi:defcfun ("libusb_pollfds_handle_timeouts"
               %usb::pollfds-handle-timeouts)
              :int
              (%usb::ctx (:pointer %usb::context)))

(declaim (inline %usb::ref-device))

(cffi:defcfun ("libusb_ref_device" %usb::ref-device)
              (:pointer %usb::device)
              (%usb::dev (:pointer %usb::device)))

(declaim (inline %usb::release-interface))

(cffi:defcfun ("libusb_release_interface" %usb::release-interface)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::interface-number :int))

(declaim (inline %usb::reset-device))

(cffi:defcfun ("libusb_reset_device" %usb::reset-device)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle)))

(declaim (inline %usb::set-auto-detach-kernel-driver))

(cffi:defcfun ("libusb_set_auto_detach_kernel_driver"
               %usb::set-auto-detach-kernel-driver)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::enable :int))

(declaim (inline %usb::set-configuration))

(cffi:defcfun ("libusb_set_configuration" %usb::set-configuration)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::configuration :int))

(declaim (inline %usb::set-debug))

(cffi:defcfun ("libusb_set_debug" %usb::set-debug)
              :void
              (%usb::ctx (:pointer %usb::context))
              (%usb::level :int))

(declaim (inline %usb::set-interface-alt-setting))

(cffi:defcfun ("libusb_set_interface_alt_setting"
               %usb::set-interface-alt-setting)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::interface-number :int)
              (%usb::alternate-setting :int))

(cffi:defctype %usb::log-cb (:pointer :pointer))

(declaim (inline %usb::set-log-cb))

(cffi:defcfun ("libusb_set_log_cb" %usb::set-log-cb)
              :void
              (%usb::ctx (:pointer %usb::context))
              (%usb::cb %usb::log-cb)
              (%usb::mode :int))

(declaim (inline %usb::set-option))

(cffi:defcfun ("libusb_set_option" %usb::set-option)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::option %usb::option)
              &rest)

(cffi:defctype %usb::pollfd-added-cb (:pointer :pointer))

(cffi:defctype %usb::pollfd-removed-cb (:pointer :pointer))

(declaim (inline %usb::set-pollfd-notifiers))

(cffi:defcfun ("libusb_set_pollfd_notifiers"
               %usb::set-pollfd-notifiers)
              :void
              (%usb::ctx (:pointer %usb::context))
              (%usb::added-cb %usb::pollfd-added-cb)
              (%usb::removed-cb %usb::pollfd-removed-cb)
              (%usb::user-data (:pointer :void)))

(declaim (inline %usb::setlocale))

(cffi:defcfun ("libusb_setlocale" %usb::setlocale)
              :int
              (%usb::locale :string))

(declaim (inline %usb::strerror))

(cffi:defcfun ("libusb_strerror" %usb::strerror)
              :string
              (%usb::errcode :int))

(declaim (inline %usb::submit-transfer))

(cffi:defcfun ("libusb_submit_transfer" %usb::submit-transfer)
              :int
              (%usb::transfer (:pointer (:struct %usb::transfer))))

(declaim (inline %usb::transfer-get-stream-id))

(cffi:defcfun ("libusb_transfer_get_stream_id"
               %usb::transfer-get-stream-id)
              %usb::uint32-t
              (%usb::transfer (:pointer (:struct %usb::transfer))))

(declaim (inline %usb::transfer-set-stream-id))

(cffi:defcfun ("libusb_transfer_set_stream_id"
               %usb::transfer-set-stream-id)
              :void
              (%usb::transfer (:pointer (:struct %usb::transfer)))
              (%usb::stream-id %usb::uint32-t))

(declaim (inline %usb::try-lock-events))

(cffi:defcfun ("libusb_try_lock_events" %usb::try-lock-events)
              :int
              (%usb::ctx (:pointer %usb::context)))

(declaim (inline %usb::unlock-event-waiters))

(cffi:defcfun ("libusb_unlock_event_waiters"
               %usb::unlock-event-waiters)
              :void
              (%usb::ctx (:pointer %usb::context)))

(declaim (inline %usb::unlock-events))

(cffi:defcfun ("libusb_unlock_events" %usb::unlock-events)
              :void
              (%usb::ctx (:pointer %usb::context)))

(declaim (inline %usb::unref-device))

(cffi:defcfun ("libusb_unref_device" %usb::unref-device)
              :void
              (%usb::dev (:pointer %usb::device)))

(declaim (inline %usb::wait-for-event))

(cffi:defcfun ("libusb_wait_for_event" %usb::wait-for-event)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::tv (:pointer (:struct %usb::timeval))))

(cffi:defctype %usb::intptr-t :long)

(declaim (inline %usb::wrap-sys-device))

(cffi:defcfun ("libusb_wrap_sys_device" %usb::wrap-sys-device)
              :int
              (%usb::ctx (:pointer %usb::context))
              (%usb::sys-dev %usb::intptr-t)
              (%usb::dev-handle
               (:pointer (:pointer %usb::device-handle))))

(cffi:defcstruct (%usb::%%pthread-rwlock-arch-t :size 56)
                 (%usb::%%readers :unsigned-int :offset 0)
                 (%usb::%%writers :unsigned-int :offset 4)
                 (%usb::%%wrphase-futex :unsigned-int :offset 8)
                 (%usb::%%writers-futex :unsigned-int :offset 12)
                 (%usb::%%pad3 :unsigned-int :offset 16)
                 (%usb::%%pad4 :unsigned-int :offset 20)
                 (%usb::%%cur-writer :int :offset 24)
                 (%usb::%%shared :int :offset 28)
                 (%usb::%%rwelision :char :offset 32)
                 (%usb::%%pad1 :unsigned-char :count 7 :offset 33)
                 (%usb::%%pad2 :unsigned-long :offset 40)
                 (%usb::%%flags :unsigned-int :offset 48))

(cffi:defcstruct (%usb::control-setup :size 8)
                 (%usb::bm-request-type %usb::uint8-t :offset 0)
                 (%usb::b-request %usb::uint8-t :offset 1)
                 (%usb::w-value %usb::uint16-t :offset 2)
                 (%usb::w-index %usb::uint16-t :offset 4)
                 (%usb::w-length %usb::uint16-t :offset 6))

(cffi:defctype %usb::%%blkcnt64-t :long)

(cffi:defctype %usb::%%blkcnt-t :long)

(cffi:defctype %usb::%%blksize-t :long)

(cffi:defctype %usb::%%caddr-t :string)

(cffi:defctype %usb::%%clock-t :long)

(cffi:defctype %usb::%%clockid-t :int)

(cffi:defctype %usb::%%daddr-t :int)

(cffi:defctype %usb::%%dev-t :unsigned-long)

(cffi:defctype %usb::%%fsblkcnt64-t :unsigned-long)

(cffi:defctype %usb::%%fsblkcnt-t :unsigned-long)

(cffi:defctype %usb::%%fsfilcnt64-t :unsigned-long)

(cffi:defctype %usb::%%fsfilcnt-t :unsigned-long)

(cffi:defcstruct (%usb::|C:@SA@--FSID-T| :size 8)
                 (%usb::%%val :int :count 2 :offset 0))

(cffi:defctype %usb::%%fsid-t (:struct %usb::|C:@SA@--FSID-T|))

(cffi:defctype %usb::%%fsword-t :long)

(cffi:defctype %usb::%%gid-t :unsigned-int)

(cffi:defctype %usb::%%id-t :unsigned-int)

(cffi:defctype %usb::%%ino64-t :unsigned-long)

(cffi:defctype %usb::%%ino-t :unsigned-long)

(cffi:defctype %usb::%%int16-t :short)

(cffi:defctype %usb::%%int32-t :int)

(cffi:defctype %usb::%%int64-t :long)

(cffi:defctype %usb::%%int8-t :char)

(cffi:defctype %usb::%%int-least16-t :short)

(cffi:defctype %usb::%%int-least32-t :int)

(cffi:defctype %usb::%%int-least64-t :long)

(cffi:defctype %usb::%%int-least8-t :char)

(cffi:defctype %usb::%%intmax-t :long)

(cffi:defctype %usb::%%intptr-t :long)

(cffi:defctype %usb::%%itimer-which-t :int)

(cffi:defctype %usb::%%key-t :int)

(cffi:defcstruct (%usb::%%locale-struct :size 232)
                 (%usb::%%ctype-b (:pointer :unsigned-short) :offset
                  104)
                 (%usb::%%ctype-tolower (:pointer :int) :offset 112)
                 (%usb::%%ctype-toupper (:pointer :int) :offset 120)
                 (%usb::%%names (:pointer :string) :offset 128))

(cffi:defctype %usb::%%locale-t
               (:pointer (:struct %usb::%%locale-struct)))

(cffi:defctype %usb::%%loff-t :long)

(cffi:defctype %usb::%%mode-t :unsigned-int)

(cffi:defctype %usb::%%nlink-t :unsigned-long)

(cffi:defctype %usb::%%off64-t :long)

(cffi:defctype %usb::%%off-t :long)

(cffi:defctype %usb::%%pid-t :int)

(cffi:defcstruct (%usb::%%pthread-internal-list :size 16))

(cffi:defctype %usb::%%pthread-list-t
               (:struct %usb::%%pthread-internal-list))

(cffi:defcstruct (%usb::%%pthread-internal-slist :size 8))

(cffi:defctype %usb::%%pthread-slist-t
               (:struct %usb::%%pthread-internal-slist))

(cffi:defctype %usb::%%quad-t :long)

(cffi:defctype %usb::%%rlim64-t :unsigned-long)

(cffi:defctype %usb::%%rlim-t :unsigned-long)

(cffi:defctype %usb::%%sig-atomic-t :int)

(cffi:defcstruct (%usb::|C:@SA@--SIGSET-T| :size 128)
                 (%usb::%%val :unsigned-long :count 16 :offset 0))

(cffi:defctype %usb::%%sigset-t (:struct %usb::|C:@SA@--SIGSET-T|))

(cffi:defctype %usb::%%socklen-t :unsigned-int)

(cffi:defctype %usb::%%ssize-t :long)

(cffi:defctype %usb::%%suseconds64-t :long)

(cffi:defctype %usb::%%syscall-slong-t :long)

(cffi:defctype %usb::%%syscall-ulong-t :unsigned-long)

(cffi:defctype %usb::%%thrd-t :unsigned-long)

(cffi:defctype %usb::%%timer-t (:pointer :void))

(cffi:defctype %usb::%%tss-t :unsigned-int)

(cffi:defctype %usb::%%u-quad-t :unsigned-long)

(cffi:defctype %usb::%%uid-t :unsigned-int)

(cffi:defctype %usb::%%uint16-t :unsigned-short)

(cffi:defctype %usb::%%uint32-t :unsigned-int)

(cffi:defctype %usb::%%uint64-t :unsigned-long)

(cffi:defctype %usb::%%uint8-t :unsigned-char)

(cffi:defctype %usb::%%uint-least16-t :unsigned-short)

(cffi:defctype %usb::%%uint-least32-t :unsigned-int)

(cffi:defctype %usb::%%uint-least64-t :unsigned-long)

(cffi:defctype %usb::%%uint-least8-t :unsigned-char)

(cffi:defctype %usb::%%uintmax-t :unsigned-long)

(cffi:defctype %usb::%%useconds-t :unsigned-int)

(cffi:defctype %usb::blkcnt-t :long)

(cffi:defctype %usb::blksize-t :long)

(cffi:defctype %usb::caddr-t :string)

(cffi:defctype %usb::clock-t :long)

(cffi:defctype %usb::clockid-t :int)

(cffi:defctype %usb::daddr-t :int)

(cffi:defctype %usb::dev-t :unsigned-long)

(cffi:defctype %usb::fsblkcnt-t :unsigned-long)

(cffi:defctype %usb::fsfilcnt-t :unsigned-long)

(cffi:defctype %usb::fsid-t (:struct %usb::|C:@SA@--FSID-T|))

(cffi:defctype %usb::gid-t :unsigned-int)

(cffi:defctype %usb::id-t :unsigned-int)

(cffi:defctype %usb::ino-t :unsigned-long)

(cffi:defctype %usb::int16-t :short)

(cffi:defctype %usb::int32-t :int)

(cffi:defctype %usb::int64-t :long)

(cffi:defctype %usb::int8-t :char)

(cffi:defctype %usb::int-fast16-t :long)

(cffi:defctype %usb::int-fast32-t :long)

(cffi:defctype %usb::int-fast64-t :long)

(cffi:defctype %usb::int-fast8-t :char)

(cffi:defctype %usb::int-least16-t :short)

(cffi:defctype %usb::int-least32-t :int)

(cffi:defctype %usb::int-least64-t :long)

(cffi:defctype %usb::int-least8-t :char)

(cffi:defctype %usb::intmax-t :long)

(cffi:defctype %usb::key-t :int)

(cffi:defbitfield (%usb::|C:@EA@LIBUSB-HOTPLUG-EVENT| :unsigned-int)
                  "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:1940:9"
                  (:arrived 1)
                  (:left 2))

(cffi:defctype %usb::hotplug-event %usb::|C:@EA@LIBUSB-HOTPLUG-EVENT|)

(cffi:defbitfield (%usb::|C:@EA@LIBUSB-HOTPLUG-FLAG| :unsigned-int)
                  "/home/borodust/devel/repo/claw-usb/src/lib/usb/libusb/libusb.h:1955:9"
                  (:hotplug-enumerate 1))

(cffi:defctype %usb::hotplug-flag %usb::|C:@EA@LIBUSB-HOTPLUG-FLAG|)

(cffi:defctype %usb::locale-t
               (:pointer (:struct %usb::%%locale-struct)))

(cffi:defctype %usb::loff-t :long)

(cffi:defctype %usb::mode-t :unsigned-int)

(cffi:defctype %usb::nlink-t :unsigned-long)

(cffi:defctype %usb::off-t :long)

(cffi:defctype %usb::pid-t :int)

(cffi:defcunion (%usb::pthread-attr-t :size 56)
                (%usb::%%size :char :count 56)
                (%usb::%%align :long))

(cffi:defctype %usb::pthread-attr-t (:union %usb::pthread-attr-t))

(cffi:defcunion (%usb::|C:@UA@PTHREAD-BARRIER-T| :size 32)
                (%usb::%%size :char :count 32)
                (%usb::%%align :long))

(cffi:defctype %usb::pthread-barrier-t
               (:union %usb::|C:@UA@PTHREAD-BARRIER-T|))

(cffi:defcunion (%usb::|C:@UA@PTHREAD-BARRIERATTR-T| :size 4)
                (%usb::%%size :char :count 4)
                (%usb::%%align :int))

(cffi:defctype %usb::pthread-barrierattr-t
               (:union %usb::|C:@UA@PTHREAD-BARRIERATTR-T|))

(cffi:defcunion (%usb::|C:@UA@PTHREAD-COND-T| :size 48)
                (%usb::%%size :char :count 48)
                (%usb::%%align :long-long))

(cffi:defctype %usb::pthread-cond-t
               (:union %usb::|C:@UA@PTHREAD-COND-T|))

(cffi:defcunion (%usb::|C:@UA@PTHREAD-CONDATTR-T| :size 4)
                (%usb::%%size :char :count 4)
                (%usb::%%align :int))

(cffi:defctype %usb::pthread-condattr-t
               (:union %usb::|C:@UA@PTHREAD-CONDATTR-T|))

(cffi:defctype %usb::pthread-key-t :unsigned-int)

(cffi:defcunion (%usb::|C:@UA@PTHREAD-MUTEX-T| :size 40)
                (%usb::%%size :char :count 40)
                (%usb::%%align :long))

(cffi:defctype %usb::pthread-mutex-t
               (:union %usb::|C:@UA@PTHREAD-MUTEX-T|))

(cffi:defcunion (%usb::|C:@UA@PTHREAD-MUTEXATTR-T| :size 4)
                (%usb::%%size :char :count 4)
                (%usb::%%align :int))

(cffi:defctype %usb::pthread-mutexattr-t
               (:union %usb::|C:@UA@PTHREAD-MUTEXATTR-T|))

(cffi:defctype %usb::pthread-once-t :int)

(cffi:defcunion (%usb::|C:@UA@PTHREAD-RWLOCK-T| :size 56)
                (%usb::%%data
                 (:struct %usb::%%pthread-rwlock-arch-t))
                (%usb::%%size :char :count 56)
                (%usb::%%align :long))

(cffi:defctype %usb::pthread-rwlock-t
               (:union %usb::|C:@UA@PTHREAD-RWLOCK-T|))

(cffi:defcunion (%usb::|C:@UA@PTHREAD-RWLOCKATTR-T| :size 8)
                (%usb::%%size :char :count 8)
                (%usb::%%align :long))

(cffi:defctype %usb::pthread-rwlockattr-t
               (:union %usb::|C:@UA@PTHREAD-RWLOCKATTR-T|))

(cffi:defctype %usb::pthread-spinlock-t :int)

(cffi:defctype %usb::pthread-t :unsigned-long)

(cffi:defctype %usb::quad-t :long)

(cffi:defctype %usb::register-t :long)

(cffi:defctype %usb::sigset-t (:struct %usb::|C:@SA@--SIGSET-T|))

(cffi:defctype %usb::suseconds-t :long)

(cffi:defctype %usb::time-t :long)

(cffi:defctype %usb::timer-t (:pointer :void))

(cffi:defctype %usb::u-int16-t :unsigned-short)

(cffi:defctype %usb::u-int32-t :unsigned-int)

(cffi:defctype %usb::u-int64-t :unsigned-long)

(cffi:defctype %usb::u-int8-t :unsigned-char)

(cffi:defctype %usb::u-quad-t :unsigned-long)

(cffi:defctype %usb::uid-t :unsigned-int)

(cffi:defctype %usb::uint64-t :unsigned-long)

(cffi:defctype %usb::uint-fast16-t :unsigned-long)

(cffi:defctype %usb::uint-fast32-t :unsigned-long)

(cffi:defctype %usb::uint-fast64-t :unsigned-long)

(cffi:defctype %usb::uint-fast8-t :unsigned-char)

(cffi:defctype %usb::uint-least16-t :unsigned-short)

(cffi:defctype %usb::uint-least32-t :unsigned-int)

(cffi:defctype %usb::uint-least64-t :unsigned-long)

(cffi:defctype %usb::uint-least8-t :unsigned-char)

(cffi:defctype %usb::uintmax-t :unsigned-long)

(cffi:defctype %usb::uintptr-t :unsigned-long)

(declaim (inline %usb::control-transfer-get-data))

(cffi:defcfun ("libusb_control_transfer_get_data"
               %usb::control-transfer-get-data)
              (:pointer :unsigned-char)
              (%usb::transfer (:pointer (:struct %usb::transfer))))

(declaim (inline %usb::control-transfer-get-setup))

(cffi:defcfun ("libusb_control_transfer_get_setup"
               %usb::control-transfer-get-setup)
              (:pointer (:struct %usb::control-setup))
              (%usb::transfer (:pointer (:struct %usb::transfer))))

(declaim (inline %usb::cpu-to-le16))

(cffi:defcfun ("libusb_cpu_to_le16" %usb::cpu-to-le16)
              %usb::uint16-t
              (%usb::x %usb::uint16-t))

(cffi:defctype %usb::transfer-cb-fn (:pointer :pointer))

(declaim (inline %usb::fill-bulk-stream-transfer))

(cffi:defcfun ("libusb_fill_bulk_stream_transfer"
               %usb::fill-bulk-stream-transfer)
              :void
              (%usb::transfer (:pointer (:struct %usb::transfer)))
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::endpoint :unsigned-char)
              (%usb::stream-id %usb::uint32-t)
              (%usb::buffer (:pointer :unsigned-char))
              (%usb::length :int)
              (%usb::callback %usb::transfer-cb-fn)
              (%usb::user-data (:pointer :void))
              (%usb::timeout :unsigned-int))

(declaim (inline %usb::fill-bulk-transfer))

(cffi:defcfun ("libusb_fill_bulk_transfer" %usb::fill-bulk-transfer)
              :void
              (%usb::transfer (:pointer (:struct %usb::transfer)))
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::endpoint :unsigned-char)
              (%usb::buffer (:pointer :unsigned-char))
              (%usb::length :int)
              (%usb::callback %usb::transfer-cb-fn)
              (%usb::user-data (:pointer :void))
              (%usb::timeout :unsigned-int))

(declaim (inline %usb::fill-control-setup))

(cffi:defcfun ("libusb_fill_control_setup" %usb::fill-control-setup)
              :void
              (%usb::buffer (:pointer :unsigned-char))
              (%usb::bm-request-type %usb::uint8-t)
              (%usb::b-request %usb::uint8-t)
              (%usb::w-value %usb::uint16-t)
              (%usb::w-index %usb::uint16-t)
              (%usb::w-length %usb::uint16-t))

(declaim (inline %usb::fill-control-transfer))

(cffi:defcfun ("libusb_fill_control_transfer"
               %usb::fill-control-transfer)
              :void
              (%usb::transfer (:pointer (:struct %usb::transfer)))
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::buffer (:pointer :unsigned-char))
              (%usb::callback %usb::transfer-cb-fn)
              (%usb::user-data (:pointer :void))
              (%usb::timeout :unsigned-int))

(declaim (inline %usb::fill-interrupt-transfer))

(cffi:defcfun ("libusb_fill_interrupt_transfer"
               %usb::fill-interrupt-transfer)
              :void
              (%usb::transfer (:pointer (:struct %usb::transfer)))
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::endpoint :unsigned-char)
              (%usb::buffer (:pointer :unsigned-char))
              (%usb::length :int)
              (%usb::callback %usb::transfer-cb-fn)
              (%usb::user-data (:pointer :void))
              (%usb::timeout :unsigned-int))

(declaim (inline %usb::fill-iso-transfer))

(cffi:defcfun ("libusb_fill_iso_transfer" %usb::fill-iso-transfer)
              :void
              (%usb::transfer (:pointer (:struct %usb::transfer)))
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::endpoint :unsigned-char)
              (%usb::buffer (:pointer :unsigned-char))
              (%usb::length :int)
              (%usb::num-iso-packets :int)
              (%usb::callback %usb::transfer-cb-fn)
              (%usb::user-data (:pointer :void))
              (%usb::timeout :unsigned-int))

(declaim (inline %usb::get-descriptor))

(cffi:defcfun ("libusb_get_descriptor" %usb::get-descriptor)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::desc-type %usb::uint8-t)
              (%usb::desc-index %usb::uint8-t)
              (%usb::data (:pointer :unsigned-char))
              (%usb::length :int))

(declaim (inline %usb::get-iso-packet-buffer))

(cffi:defcfun ("libusb_get_iso_packet_buffer"
               %usb::get-iso-packet-buffer)
              (:pointer :unsigned-char)
              (%usb::transfer (:pointer (:struct %usb::transfer)))
              (%usb::packet :unsigned-int))

(declaim (inline %usb::get-iso-packet-buffer-simple))

(cffi:defcfun ("libusb_get_iso_packet_buffer_simple"
               %usb::get-iso-packet-buffer-simple)
              (:pointer :unsigned-char)
              (%usb::transfer (:pointer (:struct %usb::transfer)))
              (%usb::packet :unsigned-int))

(declaim (inline %usb::get-string-descriptor))

(cffi:defcfun ("libusb_get_string_descriptor"
               %usb::get-string-descriptor)
              :int
              (%usb::dev-handle (:pointer %usb::device-handle))
              (%usb::desc-index %usb::uint8-t)
              (%usb::langid %usb::uint16-t)
              (%usb::data (:pointer :unsigned-char))
              (%usb::length :int))

(declaim (inline %usb::set-iso-packet-lengths))

(cffi:defcfun ("libusb_set_iso_packet_lengths"
               %usb::set-iso-packet-lengths)
              :void
              (%usb::transfer (:pointer (:struct %usb::transfer)))
              (%usb::length :unsigned-int))

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%usb::uint-least16-t "%USB")
  (export '%usb::get-max-packet-size "%USB")
  (export '%usb::try-lock-events "%USB")
  (export '%usb::pollfd-removed-cb "%USB")
  (export '%usb::log-level "%USB")
  (export '%usb::%%quad-t "%USB")
  (export '%usb::transfer-type "%USB")
  (export '%usb::daddr-t "%USB")
  (export '%usb::endpoint "%USB")
  (export '%usb::uint8-t "%USB")
  (export '%usb::cancel-transfer "%USB")
  (export '%usb::id-product "%USB")
  (export '%usb::event-handling-ok "%USB")
  (export '%usb::%%int-least32-t "%USB")
  (export '%usb::log-cb-mode "%USB")
  (export '%usb::%%rlim-t "%USB")
  (export '%usb::unref-device "%USB")
  (export '%usb::%%uint-least32-t "%USB")
  (export '%usb::%%pthread-rwlock-arch-t "%USB")
  (export '%usb::b-alternate-setting "%USB")
  (export '%usb::%%uint8-t "%USB")
  (export '%usb::transfer "%USB")
  (export '%usb::get-next-timeout "%USB")
  (export '%usb::get-max-iso-packet-size "%USB")
  (export '%usb::fsid-t "%USB")
  (export '%usb::b-refresh "%USB")
  (export '%usb::error-name "%USB")
  (export '%usb::ssize-t "%USB")
  (export '%usb::pthread-spinlock-t "%USB")
  (export '%usb::control-transfer-get-data "%USB")
  (export '%usb::+bt-usb-2-0-extension-size+ "%USB")
  (export '%usb::%%locale-struct "%USB")
  (export '%usb::actual-length "%USB")
  (export '%usb::fill-interrupt-transfer "%USB")
  (export '%usb::id-vendor "%USB")
  (export '%usb::pthread-barrier-t "%USB")
  (export '%usb::caddr-t "%USB")
  (export '%usb::bcd-usb "%USB")
  (export '%usb::get-device-list "%USB")
  (export '%usb::int-least16-t "%USB")
  (export '%usb::get-string-descriptor "%USB")
  (export '%usb::strerror "%USB")
  (export '%usb::control-transfer "%USB")
  (export '%usb::fd "%USB")
  (export '%usb::uint-fast16-t "%USB")
  (export '%usb::%%suseconds64-t "%USB")
  (export '%usb::hotplug-register-callback "%USB")
  (export '%usb::+h+ "%USB")
  (export '%usb::b-interface-protocol "%USB")
  (export '%usb::fill-control-setup "%USB")
  (export '%usb::off-t "%USB")
  (export '%usb::w-bytes-per-interval "%USB")
  (export '%usb::|C:@SA@--SIGSET-T| "%USB")
  (export '%usb::+hotplug-match-any+ "%USB")
  (export '%usb::usb-2-0-extension-attributes "%USB")
  (export '%usb::pthread-attr-t "%USB")
  (export '%usb::endpoint-direction "%USB")
  (export '%usb::pthread-mutexattr-t "%USB")
  (export '%usb::gid-t "%USB")
  (export '%usb::+%%have-pthread-attr-t+ "%USB")
  (export '%usb::%%names "%USB")
  (export '%usb::time-t "%USB")
  (export '%usb::pthread-mutex-t "%USB")
  (export '%usb::%%uid-t "%USB")
  (export '%usb::release-interface "%USB")
  (export '%usb::timeout "%USB")
  (export '%usb::hotplug-event "%USB")
  (export '%usb::int-fast16-t "%USB")
  (export '%usb::fsfilcnt-t "%USB")
  (export '%usb::free-ss-usb-device-capability-descriptor "%USB")
  (export '%usb::tv-usec "%USB")
  (export '%usb::uintmax-t "%USB")
  (export '%usb::i-serial-number "%USB")
  (export '%usb::%%rlim64-t "%USB")
  (export '%usb::device "%USB")
  (export '%usb::get-active-config-descriptor "%USB")
  (export '%usb::get-ss-usb-device-capability-descriptor "%USB")
  (export '%usb::intptr-t "%USB")
  (export '%usb::%%int-least16-t "%USB")
  (export '%usb::w-value "%USB")
  (export '%usb::|C:@UA@PTHREAD-CONDATTR-T| "%USB")
  (export '%usb::+packed+ "%USB")
  (export '%usb::b-descriptor-type "%USB")
  (export '%usb::%%fsblkcnt-t "%USB")
  (export '%usb::clock-t "%USB")
  (export '%usb::uint32-t "%USB")
  (export '%usb::set-auto-detach-kernel-driver "%USB")
  (export '%usb::%%blkcnt64-t "%USB")
  (export '%usb::setlocale "%USB")
  (export '%usb::%%key-t "%USB")
  (export '%usb::iso-packet-desc "%USB")
  (export '%usb::get-container-id-descriptor "%USB")
  (export '%usb::dev-t "%USB")
  (export '%usb::free-container-id-descriptor "%USB")
  (export '%usb::length "%USB")
  (export '%usb::set-debug "%USB")
  (export '%usb::attach-kernel-driver "%USB")
  (export '%usb::u-int16-t "%USB")
  (export '%usb::b-length "%USB")
  (export '%usb::bm-request-type "%USB")
  (export '%usb::sigset-t "%USB")
  (export '%usb::num-iso-packets "%USB")
  (export '%usb::ss-endpoint-companion-descriptor "%USB")
  (export '%usb::uint-least32-t "%USB")
  (export '%usb::|C:@UA@PTHREAD-BARRIER-T| "%USB")
  (export '%usb::uint16-t "%USB")
  (export '%usb::b-max-burst "%USB")
  (export '%usb::dev-handle "%USB")
  (export '%usb::micro "%USB")
  (export '%usb::i-interface "%USB")
  (export '%usb::%%timer-t "%USB")
  (export '%usb::%%ctype-tolower "%USB")
  (export '%usb::get-port-numbers "%USB")
  (export '%usb::get-device "%USB")
  (export '%usb::%%uint16-t "%USB")
  (export '%usb::get-usb-2-0-extension-descriptor "%USB")
  (export '%usb::alloc-transfer "%USB")
  (export '%usb::%%uint64-t "%USB")
  (export '%usb::%%clockid-t "%USB")
  (export '%usb::bos-type "%USB")
  (export '%usb::b-max-packet-size0 "%USB")
  (export '%usb::control-transfer-get-setup "%USB")
  (export '%usb::%%tss-t "%USB")
  (export '%usb::%%sig-atomic-t "%USB")
  (export '%usb::timer-t "%USB")
  (export '%usb::b-reserved "%USB")
  (export '%usb::u-quad-t "%USB")
  (export '%usb::u-int64-t "%USB")
  (export '%usb::pthread-key-t "%USB")
  (export '%usb::handle-events "%USB")
  (export '%usb::num-altsetting "%USB")
  (export '%usb::pthread-cond-t "%USB")
  (export '%usb::set-interface-alt-setting "%USB")
  (export '%usb::b-device-class "%USB")
  (export '%usb::nlink-t "%USB")
  (export '%usb::%%intptr-t "%USB")
  (export '%usb::int-least64-t "%USB")
  (export '%usb::b-device-protocol "%USB")
  (export '%usb::get-device-address "%USB")
  (export '%usb::extra-length "%USB")
  (export '%usb::int8-t "%USB")
  (export '%usb::exit "%USB")
  (export '%usb::%%pthread-slist-t "%USB")
  (export '%usb::%%pad4 "%USB")
  (export '%usb::unlock-event-waiters "%USB")
  (export '%usb::|C:@UA@PTHREAD-MUTEX-T| "%USB")
  (export '%usb::interface "%USB")
  (export '%usb::pid-t "%USB")
  (export '%usb::fill-iso-transfer "%USB")
  (export '%usb::+dt-device-capability-size+ "%USB")
  (export '%usb::|C:@UA@PTHREAD-BARRIERATTR-T| "%USB")
  (export '%usb::+dt-config-size+ "%USB")
  (export '%usb::flags "%USB")
  (export '%usb::b-num-interfaces "%USB")
  (export '%usb::%%int8-t "%USB")
  (export '%usb::mode-t "%USB")
  (export '%usb::device-handle "%USB")
  (export '%usb::endpoint-transfer-type "%USB")
  (export '%usb::%%int32-t "%USB")
  (export '%usb::get-version "%USB")
  (export '%usb::%%blksize-t "%USB")
  (export '%usb::int32-t "%USB")
  (export '%usb::lock-events "%USB")
  (export '%usb::ss-usb-device-capability-attributes "%USB")
  (export '%usb::+dt-bos-max-size+ "%USB")
  (export '%usb::config-descriptor "%USB")
  (export '%usb::transfer-flags "%USB")
  (export '%usb::suseconds-t "%USB")
  (export '%usb::descriptor-type "%USB")
  (export '%usb::fill-control-transfer "%USB")
  (export '%usb::%%ssize-t "%USB")
  (export '%usb::get-configuration "%USB")
  (export '%usb::error "%USB")
  (export '%usb::+iso-sync-type-mask+ "%USB")
  (export '%usb::endpoint-descriptor "%USB")
  (export '%usb::free-bos-descriptor "%USB")
  (export '%usb::control-setup "%USB")
  (export '%usb::iso-usage-type "%USB")
  (export '%usb::%%loff-t "%USB")
  (export '%usb::pthread-barrierattr-t "%USB")
  (export '%usb::kernel-driver-active "%USB")
  (export '%usb::usb-2-0-extension-descriptor "%USB")
  (export '%usb::%%intmax-t "%USB")
  (export '%usb::open-device-with-vid-pid "%USB")
  (export '%usb::b-dev-capability-type "%USB")
  (export '%usb::interrupt-event-handler "%USB")
  (export '%usb::major "%USB")
  (export '%usb::bm-attributes "%USB")
  (export '%usb::transfer-cb-fn "%USB")
  (export '%usb::get-port-number "%USB")
  (export '%usb::%%socklen-t "%USB")
  (export '%usb::%%writers "%USB")
  (export '%usb::intmax-t "%USB")
  (export '%usb::request-recipient "%USB")
  (export '%usb::pthread-rwlock-t "%USB")
  (export '%usb::+endpoint-address-mask+ "%USB")
  (export '%usb::%%nlink-t "%USB")
  (export '%usb::hotplug-callback-fn "%USB")
  (export '%usb::locale-t "%USB")
  (export '%usb::u-int32-t "%USB")
  (export '%usb::%%pid-t "%USB")
  (export '%usb::b-request "%USB")
  (export '%usb::log-cb "%USB")
  (export '%usb::hotplug-deregister-callback "%USB")
  (export '%usb::b-interval "%USB")
  (export '%usb::%%uintmax-t "%USB")
  (export '%usb::fill-bulk-stream-transfer "%USB")
  (export '%usb::type "%USB")
  (export '%usb::set-configuration "%USB")
  (export '%usb::+dt-interface-size+ "%USB")
  (export '%usb::set-log-cb "%USB")
  (export '%usb::user-data "%USB")
  (export '%usb::%%fsblkcnt64-t "%USB")
  (export '%usb::max-power "%USB")
  (export '%usb::int-least8-t "%USB")
  (export '%usb::%%ctype-b "%USB")
  (export '%usb::%%ctype-toupper "%USB")
  (export '%usb::b-interface-number "%USB")
  (export '%usb::dev-mem-free "%USB")
  (export '%usb::%%sigset-t "%USB")
  (export '%usb::free-transfer "%USB")
  (export '%usb::+%%ptr-t+ "%USB")
  (export '%usb::hotplug-get-user-data "%USB")
  (export '%usb::size-t "%USB")
  (export '%usb::close "%USB")
  (export '%usb::b-interface-class "%USB")
  (export '%usb::nano "%USB")
  (export '%usb::%%writers-futex "%USB")
  (export '%usb::get-config-descriptor-by-value "%USB")
  (export '%usb::iso-sync-type "%USB")
  (export '%usb::int-least32-t "%USB")
  (export '%usb::interface-descriptor "%USB")
  (export '%usb::b-u2dev-exit-lat "%USB")
  (export '%usb::%%clock-t "%USB")
  (export '%usb::loff-t "%USB")
  (export '%usb::%%ino-t "%USB")
  (export '%usb::+endpoint-dir-mask+ "%USB")
  (export '%usb::+bt-ss-usb-device-capability-size+ "%USB")
  (export '%usb::free-pollfds "%USB")
  (export '%usb::capability "%USB")
  (export '%usb::|C:@SA@--FSID-T| "%USB")
  (export '%usb::pthread-condattr-t "%USB")
  (export '%usb::%%int-least8-t "%USB")
  (export '%usb::extra "%USB")
  (export '%usb::+api-version+ "%USB")
  (export '%usb::handle-events-completed "%USB")
  (export '%usb::+dt-endpoint-size+ "%USB")
  (export '%usb::%%shared "%USB")
  (export '%usb::clear-halt "%USB")
  (export '%usb::id-t "%USB")
  (export '%usb::b-num-device-caps "%USB")
  (export '%usb::%%fsword-t "%USB")
  (export '%usb::b-configuration-value "%USB")
  (export '%usb::get-device-descriptor "%USB")
  (export '%usb::+%%need-size-t+ "%USB")
  (export '%usb::status "%USB")
  (export '%usb::%%off64-t "%USB")
  (export '%usb::free-device-list "%USB")
  (export '%usb::%%time-t "%USB")
  (export '%usb::%%off-t "%USB")
  (export '%usb::%%pthread-internal-slist "%USB")
  (export '%usb::timeval "%USB")
  (export '%usb::claim-interface "%USB")
  (export '%usb::lock-event-waiters "%USB")
  (export '%usb::b-synch-address "%USB")
  (export '%usb::%%daddr-t "%USB")
  (export '%usb::handle-events-locked "%USB")
  (export '%usb::%%u-quad-t "%USB")
  (export '%usb::hotplug-callback-handle "%USB")
  (export '%usb::describe "%USB")
  (export '%usb::free-streams "%USB")
  (export '%usb::%%syscall-slong-t "%USB")
  (export '%usb::i-manufacturer "%USB")
  (export '%usb::b-device-sub-class "%USB")
  (export '%usb::unlock-events "%USB")
  (export '%usb::uint-fast64-t "%USB")
  (export '%usb::init "%USB")
  (export '%usb::version "%USB")
  (export '%usb::ino-t "%USB")
  (export '%usb::%%cur-writer "%USB")
  (export '%usb::handle-events-timeout-completed "%USB")
  (export '%usb::device-descriptor "%USB")
  (export '%usb::%%int16-t "%USB")
  (export '%usb::+hotplug-no-flags+ "%USB")
  (export '%usb::%%dev-t "%USB")
  (export '%usb::%%flags "%USB")
  (export '%usb::blksize-t "%USB")
  (export '%usb::dev-mem-alloc "%USB")
  (export '%usb::get-string-descriptor-ascii "%USB")
  (export '%usb::bos-dev-capability-descriptor "%USB")
  (export '%usb::set-pollfd-notifiers "%USB")
  (export '%usb::supported-speed "%USB")
  (export '%usb::alloc-streams "%USB")
  (export '%usb::ref-device "%USB")
  (export '%usb::%%syscall-ulong-t "%USB")
  (export '%usb::%%pad1 "%USB")
  (export '%usb::%%itimer-which-t "%USB")
  (export '%usb::|C:@EA@LIBUSB-HOTPLUG-FLAG| "%USB")
  (export '%usb::w-index "%USB")
  (export '%usb::pollfd-added-cb "%USB")
  (export '%usb::%%pthread-internal-list "%USB")
  (export '%usb::+control-setup-size+ "%USB")
  (export '%usb::transfer-get-stream-id "%USB")
  (export '%usb::standard-request "%USB")
  (export '%usb::%%fsid-t "%USB")
  (export '%usb::get-bos-descriptor "%USB")
  (export '%usb::+iso-usage-type-mask+ "%USB")
  (export '%usb::%%size "%USB")
  (export '%usb::+call+ "%USB")
  (export '%usb::transfer-set-stream-id "%USB")
  (export '%usb::i-product "%USB")
  (export '%usb::%%thrd-t "%USB")
  (export '%usb::int64-t "%USB")
  (export '%usb::uint-least64-t "%USB")
  (export '%usb::%%data "%USB")
  (export '%usb::get-pollfds "%USB")
  (export '%usb::int-fast32-t "%USB")
  (export '%usb::buffer "%USB")
  (export '%usb::%%suseconds-t "%USB")
  (export '%usb::w-total-length "%USB")
  (export '%usb::get-device-speed "%USB")
  (export '%usb::cpu-to-le16 "%USB")
  (export '%usb::wait-for-event "%USB")
  (export '%usb::+dt-device-size+ "%USB")
  (export '%usb::uint64-t "%USB")
  (export '%usb::has-capability "%USB")
  (export '%usb::quad-t "%USB")
  (export '%usb::%%uint32-t "%USB")
  (export '%usb::%%pthread-list-t "%USB")
  (export '%usb::open "%USB")
  (export '%usb::detach-kernel-driver "%USB")
  (export '%usb::%%readers "%USB")
  (export '%usb::%%caddr-t "%USB")
  (export '%usb::uint-least8-t "%USB")
  (export '%usb::iso-packet-descriptor "%USB")
  (export '%usb::|C:@UA@PTHREAD-MUTEXATTR-T| "%USB")
  (export '%usb::|C:@UA@PTHREAD-RWLOCKATTR-T| "%USB")
  (export '%usb::int16-t "%USB")
  (export '%usb::|C:@EA@LIBUSB-HOTPLUG-EVENT| "%USB")
  (export '%usb::int-fast8-t "%USB")
  (export '%usb::uintptr-t "%USB")
  (export '%usb::pollfds-handle-timeouts "%USB")
  (export '%usb::%%uint-least8-t "%USB")
  (export '%usb::b-num-configurations "%USB")
  (export '%usb::u-int8-t "%USB")
  (export '%usb::%%pad3 "%USB")
  (export '%usb::free-ss-endpoint-companion-descriptor "%USB")
  (export '%usb::bcd-device "%USB")
  (export '%usb::speed "%USB")
  (export '%usb::submit-transfer "%USB")
  (export '%usb::transfer-status "%USB")
  (export '%usb::event-handler-active "%USB")
  (export '%usb::handle-events-timeout "%USB")
  (export '%usb::+dt-bos-size+ "%USB")
  (export '%usb::register-t "%USB")
  (export '%usb::request-type "%USB")
  (export '%usb::hotplug-flag "%USB")
  (export '%usb::container-id-descriptor "%USB")
  (export '%usb::+dt-hub-nonvar-size+ "%USB")
  (export '%usb::+bt-container-id-size+ "%USB")
  (export '%usb::%%locale-t "%USB")
  (export '%usb::free-config-descriptor "%USB")
  (export '%usb::rc "%USB")
  (export '%usb::%%int64-t "%USB")
  (export '%usb::option "%USB")
  (export '%usb::pthread-rwlockattr-t "%USB")
  (export '%usb::|C:@UA@PTHREAD-RWLOCK-T| "%USB")
  (export '%usb::context "%USB")
  (export '%usb::%%fsfilcnt64-t "%USB")
  (export '%usb::events "%USB")
  (export '%usb::%%uint-least16-t "%USB")
  (export '%usb::get-descriptor "%USB")
  (export '%usb::free-usb-2-0-extension-descriptor "%USB")
  (export '%usb::%%pad2 "%USB")
  (export '%usb::pthread-once-t "%USB")
  (export '%usb::%%uint-least64-t "%USB")
  (export '%usb::b-num-endpoints "%USB")
  (export '%usb::uid-t "%USB")
  (export '%usb::pollfd "%USB")
  (export '%usb::i-configuration "%USB")
  (export '%usb::set-option "%USB")
  (export '%usb::b-u1dev-exit-lat "%USB")
  (export '%usb::%%gid-t "%USB")
  (export '%usb::interrupt-transfer "%USB")
  (export '%usb::ss-usb-device-capability-descriptor "%USB")
  (export '%usb::%%fsfilcnt-t "%USB")
  (export '%usb::get-iso-packet-buffer-simple "%USB")
  (export '%usb::uint-fast8-t "%USB")
  (export '%usb::bos-descriptor "%USB")
  (export '%usb::%%int-least64-t "%USB")
  (export '%usb::get-ss-endpoint-companion-descriptor "%USB")
  (export '%usb::clockid-t "%USB")
  (export '%usb::key-t "%USB")
  (export '%usb::wrap-sys-device "%USB")
  (export '%usb::%%rwelision "%USB")
  (export '%usb::int-fast64-t "%USB")
  (export '%usb::|C:@UA@PTHREAD-COND-T| "%USB")
  (export '%usb::%%wrphase-futex "%USB")
  (export '%usb::uint-fast32-t "%USB")
  (export '%usb::b-endpoint-address "%USB")
  (export '%usb::+error-count+ "%USB")
  (export '%usb::dev-capability-data "%USB")
  (export '%usb::dev-capability "%USB")
  (export '%usb::blkcnt-t "%USB")
  (export '%usb::w-max-packet-size "%USB")
  (export '%usb::w-speed-supported "%USB")
  (export '%usb::container-id "%USB")
  (export '%usb::get-port-path "%USB")
  (export '%usb::altsetting "%USB")
  (export '%usb::%%ino64-t "%USB")
  (export '%usb::get-config-descriptor "%USB")
  (export '%usb::fsblkcnt-t "%USB")
  (export '%usb::class-code "%USB")
  (export '%usb::bulk-transfer "%USB")
  (export '%usb::fill-bulk-transfer "%USB")
  (export '%usb::%%align "%USB")
  (export '%usb::w-length "%USB")
  (export '%usb::+le16-to-cpu+ "%USB")
  (export '%usb::%%blkcnt-t "%USB")
  (export '%usb::get-iso-packet-buffer "%USB")
  (export '%usb::get-bus-number "%USB")
  (export '%usb::reset-device "%USB")
  (export '%usb::set-iso-packet-lengths "%USB")
  (export '%usb::b-functionality-support "%USB")
  (export '%usb::+dt-endpoint-audio-size+ "%USB")
  (export '%usb::pthread-t "%USB")
  (export '%usb::%%id-t "%USB")
  (export '%usb::+transfer-type-mask+ "%USB")
  (export '%usb::minor "%USB")
  (export '%usb::%%mode-t "%USB")
  (export '%usb::%%useconds-t "%USB")
  (export '%usb::tv-sec "%USB")
  (export '%usb::+dt-ss-endpoint-companion-size+ "%USB")
  (export '%usb::get-parent "%USB")
  (export '%usb::b-interface-sub-class "%USB")
  (export '%usb::%%val "%USB"))

