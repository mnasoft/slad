;;;; slad.lisp

(in-package :slad)

;;; "slad" goes here. Hacks and glory await!

(defparameter *slad-home* (user-homedir-pathname) ; "d:\\home\\_namatv\\"
  "Каталог, в котором будет расположен выполняемый файл, 
сохраняющий текущее состояние лисп-системы.")

(defun slad ()
  (sb-ext:save-lisp-and-die
   (multiple-value-bind (s m h dd mm yy)
       (decode-universal-time (get-universal-time))
     (format nil "~Asbcl-~A-~A-~A-~A-~A-~A.exe" *slad-home* yy mm dd h m s))
   :executable t))

(defun help ()
  (format t "
 (in-package :cl-user)                    ;;;; Загрузка пакета
 ...
 (quit)                                          ;;;; Выход без сохранения
 
 ;;;; Выход с сохранением
 *slad-home*
 (defparameter *slad-home* \"d:\\\\\")                    ;;;; Каталог для записи
 (slad)                                          ;;;; Сохранить состояние и завершить работу
" ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :cl-user)

(defun slad () (slad:slad))

(defun help ()
  (format t "
 (help)                           ;;;; Вывод кратких инструкций
 (in-package :mnas-dim-value)     ;;;; Загрузка пакета mnas-dim-value тестирование размерностей
 ;;;; или
 (in-package :slad)               ;;;; Загрузка пакета slad 
 ...
 (quit)                           ;;;; Выход без сохранения

 ;;;; Выход с сохранением
 slad:*slad-home*
 (defparameter slad:*slad-home* \"d:\\\\\")      ;;;; Каталог для записи
 (slad)                                          ;;;; Сохранить состояние и завершить работу
" ))

(help)
