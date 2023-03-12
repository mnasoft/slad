;;;; package.lisp

(defpackage :slad
  (:use #:cl)
  (:export slad)
  (:export help)
  (:export *slad-home*)
  )

(in-package :slad)
  





;;;; (declaim (optimize (compilation-speed 0) (debug 3) (safety 0) (space 0) (speed 0)))
