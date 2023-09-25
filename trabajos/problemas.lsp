;problema 1

;if
(defun tienda-dicker()
    (princ "¿Cuántos pantalones va comprar?: ")

    (setq numpantalones (read))

    (if(< numpantalones 5)
        (setq total (* numpantalones 80))
        (format t "Su compra es de ~d" total)
    )
)