;Ejercicio 

;problema 1
(defun calcular-precio-tienda-dicker (cantidad)
    (let 

        (
            (precio-unitario 60)
            (total 0)
        )
        
        (format t "Usando condicionales~%")
        (tienda-dicker-if precio-unitario total cantidad)

        (format t "~%Usando cond~%")
        (tienda-dicker-cond precio-unitario total cantidad)

    )
)
(defun tienda-dicker-if (precio-unitario total cantidad)

    (if (< cantidad 5)
      (progn
        (setq total (* cantidad precio-unitario))
        (format t "El total es ~d" total)
      )
      (if (and  (>= cantidad 5)  (< cantidad 12))
        (progn
            (setq total  (* cantidad precio-unitario))
            (setq total (- total (* .15 total) ))
            (format t "El total es ~d" total)
        )
        
        (if (> cantidad 12)
            (progn
                (setq total  (* cantidad precio-unitario))
                (setq total (- total (* .30 total)))
                (format t "El total es ~d" total)
            )
        )
      )
    )


)
(defun tienda-dicker-cond (precio-unitario total cantidad)
  (cond
    ((< cantidad 5)
     (let((total (* cantidad precio-unitario)))
       (format t "El total es ~d" total))
    )
    ((and (>= cantidad 5) (< cantidad 12))
     (let ((total (* cantidad precio-unitario)))
       (setq total (- total (* 0.15 total)))
       (format t "El total es ~d" total))
    )
    ((> cantidad 12)
     (let ((total (* cantidad precio-unitario)))
       (setq total (- total (* 0.30 total)))
       (format t "El total es ~d" total))
    )
   )
)
(defun tienda-dicker ()
  (princ "¿Cuántos pantalones va comprar?: ")
  (setq numpantalones (read))
  (calcular-precio-tienda-dicker numpantalones)
)

;incf Incremento
 
;problema 2
(defun calcularPuntos (salario prestamo propiedades)
  (let ((puntos 0))
    (cond
      ((>= salario (* prestamo 0.5))
       (incf puntos 5))
      ((>= salario (* prestamo 0.25))
       (incf puntos 3))
      ((>= salario (* prestamo 0.1))
       (incf puntos 1))
    )    
    (cond
      ((>= propiedades (* prestamo 2))
       (incf puntos 5))
      ((>= propiedades prestamo)
       (incf puntos 3))
    )
    puntos
    )
)
(defun verificar-credito (nombre credito prestamo salario propiedades)
  (if (char= credito #\b)
      (let ((puntos (calcular-puntos salario prestamo propiedades)))
        (if (> puntos 6)
            (format t "El solicitante ~a es aceptado para préstamo.~%" nombre)
            (format t "El solicitante ~a no es aceptado para el préstamo.~%" nombre)
        )
      )
      (format t "El solicitante ~a no es elegible debido a su historial crediticio.~%" nombre)
   )
)
(defun banco ()
  (princ "Bienvenido al banco ")
  (format t "Usando cond~%")
  (verificar-credito "Johann" #\b 10000 6000 20000)
  (verificar-credito "Israel" #\m 12000 5000 10000)
)

;problema 3
(defun identificarLetra-case (letra)
    (case letra
        ((#\a #\e #\i #\o #\u)
        (format t "La letra ~c es una vocal.~%" letra))
        ((#\y)
        (format t "La letra ~c es una semivocal.~%" letra))
        (otherwise
        (format t "La letra ~c es una consonante.~%" letra))
    )
)
(defun identificarLetra-cond (letra)
    (cond
        ((member letra '(#\a #\e #\i #\o #\u))
        (format t "La letra ~c es una vocal.~%" letra)
        )
        ((char= letra #\y)
        (format t "La letra ~c es una semivocal.~%" letra)
        )
        (t
        (format t "La letra ~c es una consonante.~%" letra))
    )
)
(defun vocales ()
  (princ "Ingrese una letra")
  (terpri)
  (setq letra (read-char))
  (format t "Usando case~%")
  (identificarLetra-case letra)
  (format t "Usando cond~%")
  (identificarLetra-cond letra)
)

;problema 4
(defun identificarYear-cond(year)
    (cond
        (   (or (= (mod year 4) 0) (= (mod year 100) 0))
            (princ "El año es bisiesto")
        )
        (t
            (princ "El año no es bisiesto")
        )
    )
)
(defun identificarYear-unless (year)
    (unless (or (= (mod year 4) 0) (= (mod year 100) 0))
        (princ "El año no es bisiesto")
    )
    (when (or (= (mod year 4) 0) (= (mod year 100) 0))
        (princ "El año es bisiesto")
    )
) 
(defun bisiesto()
  (princ "Ingrese un año")
  (terpri)
  (setq year (read))
  (format t "Usando cond~%")
  (identificarYear-cond year)
  (format t "~%Usando unless when~%")
  (identificarYear-unless year)
)

;problema 5
(defun identificarMes-cond (mes)
    (cond
        ((= mes 2) (format t "El mes ~d tiene 28 dias" mes))
        ((or (= mes 4) (= mes 6) (= mes 9) (= mes 11)) (format t "El mes ~d tiene 30 dias" mes))
        ((or (= mes 1) (= mes 3) (= mes 5) (= mes 7) (= mes 8) (= mes 10) (= mes 12)) (format t "El mes ~d tiene 31 dias" mes))
        (t (princ "MES ERRONEO"))
    )
    (terpri)
)
(defun identificarMes-case (mes)
    (case mes
    (2 (format t "El mes ~d tiene 28 dias" mes))
    ((4 6 9 11) (format t "El mes ~d tiene 30 dias" mes))
    ((1 3 5 7 8 10 12) (format t "El mes ~d tiene 31 dias" mes))
    (t (princ "MES ERRONEO"))
    )
)
(defun meses()
  (princ "Ingrese un mes")
  (terpri)
  (setq mes (read))
  (format t "Usando cond~%")
  (identificarMes-cond mes)
  (terpri)
  (identificarMes-case mes)
)

