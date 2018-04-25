;;;; slad.lisp

(in-package #:slad)

;;; "slad" goes here. Hacks and glory await!

(defparameter *home* "d:\\home\\_namatv\\")

(defun slad ()
  (sb-ext:save-lisp-and-die
   (multiple-value-bind (s m h dd mm yy)
       (decode-universal-time (get-universal-time))
     (format nil "~Asbcl-~A-~A-~A-~A-~A-~A.exe" *home* yy mm dd h m s))
   :executable t))

(defun help ()
  (format t "
(in-package :mnas-dim-value)                    ;;;; Загрузка пакета
(quantity 220 \"V\" 15 \"A\")                       ;;;; Пример 1
(quantity 101325 \"Pa\" + ( 2.0 *g* / \"cm\" ^ 2 )) ;;;; Пример 2
...
(quit)                                          ;;;; Выход без сохранения

;;;; Выход с сохранением
*home*
(defparameter *home* \"d:\\\\\")                    ;;;; Каталог для записи
(slad)                                          ;;;; Сохранить состояние и завершить работу
" ))


(defun help-1 ()
  (format t "
(in-package :cl-user)                    ;;;; Загрузка пакета
...
(quit)                                          ;;;; Выход без сохранения

;;;; Выход с сохранением
*home*
(defparameter *home* \"d:\\\\\")                    ;;;; Каталог для записи
(slad)                                          ;;;; Сохранить состояние и завершить работу
" ))
