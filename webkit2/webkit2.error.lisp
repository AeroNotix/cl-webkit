;;; webkit2.error.lisp --- bindings for WebKitError

;; This file is part of cl-webkit.
;;
;; cl-webkit is free software; you can redistribute it and/or modify
;; it under the terms of the MIT license.
;; See `COPYING' in the source distribution for details.

;;; Code:

(in-package :webkit2)

(define-g-enum "WebKitNetworkError" webkit-network-error ()
  :webkit-network-error-failed
  :webkit-network-error-transport
  :webkit-network-error-unknown-protocol
  :webkit-network-error-cancelled
  :webkit-network-error-file-does-not-exist)

(define-g-enum "WebKitPluginError" webkit-plugin-error ()
  :webkit-plugin-error-failed
  :webkit-plugin-error-cannot-find-plugin
  :webkit-plugin-error-cannot-load-plugin
  :webkit-plugin-error-java-unavailable
  :webkit-plugin-error-connection-cancelled
  :webkit-plugin-error-will-handle-load)

(define-g-enum "WebKitPolicyError" webkit-policy-error ()
  :webkit-policy-error-failed
  :webkit-policy-error-cannot-show-mime-type
  :webkit-policy-error-frame-load-interrupted-by-policy-change
  :webkit-policy-error-cannot-use-restricted-port)

(define-g-enum "WebKitDownloadError" webkit-download-error ()
  :webkit-download-error-network
  :webkit-download-error-cancelled-by-user
  :webkit-download-error-destination)

(define-g-enum "WebKitPrintError" webkit-print-error ()
  :webkit-print-error-general
  :webkit-print-error-printer-not-found
  :webkit-print-error-invalid-page-range)

(define-g-enum "WebKitJavascriptError" webkit-javascript-error ()
  :webkit-javascript-error-script-failed)

(define-g-enum "WebKitSnapshotError" webkit-snapshot-error ()
  :webkit-snapshot-error-failed-to-create)

(defcfun "webkit_network_error_quark" glib:g-quark)
(defcfun "webkit_plugin_error_quark" glib:g-quark)
(defcfun "webkit_policy_error_quark" glib:g-quark)
(defcfun "webkit_download_error_quark" glib:g-quark)
(defcfun "webkit_print_error_quark" glib:g-quark)
(defcfun "webkit_javascript_error_quark" glib:g-quark)
(defcfun "webkit_snapshot_error_quark" glib:g-quark)
