;;;; slad.lisp

(in-package #:slad)

;;; "slad" goes here. Hacks and glory await!

(defparameter *home* "d:\\home\\_namatv\\")

(defun slad ()
  (save-lisp-and-die
   (multiple-value-bind (s m h dd mm yy)
       (decode-universal-time (get-universal-time))
     (format nil "~Asbcl-~A-~A-~A-~A-~A-~A.exe" *home* yy mm dd h m s))
   :executable t))
