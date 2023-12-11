;(lambda (a b c (+ a (* b c))))
;(lambda (A B C)) {10034F484B}>

;(defvar *foo* (lambda (a b c) (+ a (* b c)))) forma de guargar los valores de lambda 

;(funcall *foo* 1 2 3)


;Figura 1
(defvar *areaCuadrado* 
    (lambda (lado) 
        (* lado lado)
    )
)
(defun areaCuadrado(lado)
  (format t "El resultado es ~A" (funcall *areaCuadrado* lado))
)

(defvar *volCubo* 
    (lambda (lado) 
        (* lado (* lado lado))
    )
)
(defun volCubo(lado)
  (format t "El resultado es ~A" (funcall *volCubo* lado))
)

;Figura 2
(defvar *areaTriangulo* 
    (lambda(base altura)
        (/ (* base altura) 2)
    )
)
(defun areaTriangulo(base altura)
  (format t "El resultado es ~A" (funcall *areaTriangulo* base altura))
)

(defvar *volPTriangular*
    (lambda (altura_lateral base altura)
        ( / (* altura_lateral (* base altura)) 2)
    )
)
(defun volPTriangular(base altura altura_lateral)
  (format t "El resultado es ~A" (funcall *volPTriangular* base altura))
)

(defparameter *pi* 3.1416)

;Figura 3

(defvar *areaCirculo*
    (lambda (radio)
       (* *pi* (* radio radio))
    )
)
(defun volEsfera(radio)
  (format t "El resultado es ~A" (funcall *areaCirculo* radio))
)

(defvar *volEsfera*
    (lambda (radio)
       (/ (* 4 *pi* (* radio (* radio radio))) 3)
    )
)
(defun volEsfera(radio)
  (format t "El resultado es ~A" (funcall *volEsfera* radio))
)

;Figura 4

(defvar *areaRectangulo*
    (lambda (base altura)
        (* base altura)
    )
)
(defun areaRectangulo(base altura)
  (format t "El resultado es ~A" (funcall *areaRectangulo* base altura))
)

(defvar *volOrtoedro*
    (lambda (base altura ancho)
        (* base (* altura ancho))
    )
)
(defun volOrtoedro(base altura ancho)
  (format t "El resultado es ~A" (funcall *volOrtoedro* base altura ancho))
)

;Figura 5

(defvar *areaTrapecio*
    (lambda (base_mayor base_menor altura)
        (/ (* altura (+ base_mayor base_menor)) 2)
    )
)
(defun areaTrapecio(base_mayor base_menor altura)
  (format t "El resultado es ~A" (funcall *areaTrapecio* base_mayor base_menor altura))
)

(defvar *volPTrapezoidal*
    (lambda (area altura)
        (* area altura)
    )
)
(defun volPTrapezoidal(area altura)
  (format t "El resultado es ~A" (funcall *volPTrapezoidal* area altura))
)

;Figura 6

(defvar *areaPentagono*
    (lambda (perimetro apotema)
        (/ (* perimetro apotema) 2)
    )
)
(defun areaPentagono(perimetro apotema)
  (format t "El resultado es ~A" (funcall *areaPentagono* perimetro apotema))
)

(defvar *volPPentagonal*
    (lambda (area altura)
        (/ (* area altura) 2)
    )
)
(defun volPPentagonal(area altura)
  (format t "El resultado es ~A" (funcall *volPPentagonal* area altura))
)

;Figura 7

(defvar *areaHeptagono*
    (lambda (perimetro apotema)
        (/ (* perimetro apotema) 2)
    )
)
(defun areaHeptagono(perimetro apotema)
  (format t "El resultado es ~A" (funcall *areaHeptagono* perimetro apotema))
)

(defvar *volPHeptagonal*
    (lambda (area altura)
        (/ (* area altura) 2)
    )
)
(defun volPHeptagonal(area altura)
  (format t "El resultado es ~A" (funcall *volPHeptagonal* area altura))
)

;Figura 8

(defvar *areaIcosaedro*
    (lambda (lado )
        (* (sqrt 3) (* 5 (* lado lado)))
    )
)
(defun areaIcosaedro(lado )
  (format t "El resultado es ~A" (funcall *areaIcosaedro* lado ))
)

(defvar *volIcosaedro*
    (lambda (lado )
        (/ (* lado (+ 3 (sqrt 5))) 12)
    )
)
(defun volIcosaedro(lado )
  (format t "El resultado es ~A" (funcall *volIcosaedro* lado ))
)

;Figura 9

(defvar *areaCono*
    (lambda (r g)
        (* (* *pi* r) (+ r g))
    )
)
(defun areaCono(r g)
  (format t "El resultado es ~A" (funcall *areaCono* r g))
)

(defvar *volCono*
    (lambda (r h)
        ( / (* *pi* (* (* r r) h)) 3)
    )
)
(defun volCono(r h)
  (format t "El resultado es ~A" (funcall *volCono* r h))
)

;Figura 10

(defvar *areaRomdo*
    (lambda (d_mayor d_menor)
        (/ (* d_mayor d_menor) 2)
    )
)
(defun areaRomdo(d_mayor d_menor)
  (format t "El resultado es ~A" (funcall *areaRomdo* d_mayor d_menor))
)

(defvar *volOctaedro*
    (lambda (lado)
        (/ (* (sqrt 2) (* lado (* lado lado))) 3)
    )
)
(defun volOctaedro(lado)
  (format t "El resultado es ~A" (funcall *volOctaedro* lado))
)