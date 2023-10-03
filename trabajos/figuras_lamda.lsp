;(lambda (a b c (+ a (* b c))))
;(lambda (A B C)) {10034F484B}>

;(defvar *foo* (lambda (a b c) (+ a (* b c)))) forma de guargar los valores de lambda 

;(funcall *foo* 1 2 3)


(defvar *areaCuadrado* 
    (lambda (lado) 
        (* lado lado)
    )
)

(defun areaCuadrado()
    (princ "Dame el lado del cuadrado: ")
    (read lado)
    (format t "El resultado es ~A" (funcall *areacuadrado* 4))
)
;

(defvar *volCubo* 
    (lambda (lado) 
        (* lado (* lado lado))
    )
)
;(funcall *volcubo* 2)

(defvar *areaTriangulo* 
    (lambda(base altura)
        (* base altura)
    )
)
;(funcall *areaTriangulo* 3 4)

(defvar *volPTriangular*
    (lambda (altura_lateral base altura)
        ( / (* altura_lateral (* base altura)) 2)
    )
)
;(funcall *volPTriangular* 3 4 5)

(defparameter *pi* 3.1416)
