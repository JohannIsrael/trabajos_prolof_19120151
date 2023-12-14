
### nombre: Johann Israel Ascencio Salazar
### No. control: 19120151

<h2 style="color:orange">Área y volumen de 10 figuras </h2>
<p>Funciones para calcular el área y volumen de 10 figuras</p>

``` lisp
;Figura 1
(defun areaCuadrado()
    (princ "Dame el lado de cuadrado: ")
    (setq lado (read))
    (setq resultado (* lado lado))
    (format t "El área del Cuadrado es: ~d" resultado)
)

(defun volCubo()
    (princ "Dame el lado del cubo: ")
    (setq lado (read))
    (setq resultado (* lado (* lado lado)))
    (format t "El volumen del Cubo es: ~d" resultado)
)

;Figura 2
(defun areaTriangulo()
    (princ "Dame la base: ")
    (setq base (read))
    (princ "Dame la altura: ")
    (setq altura (read))
    (setq resultado (/ (* base altura) 2))
    (format t "El area del Triangulo es: ~d" resultado)
)

(defun volPTriangular()
    (princ "Dame la base del prisma triagular: ")
    (setq base (read))
    (princ "Dame la altura del prisma triangula: ")
    (setq altura (read))
    (princ "Dame la altura lateral: ")
    (setq  altura_lateral (read))
    (setq resultado ( / (* altura_lateral (* base altura)) 2))
    (format t "El volumen de la Piramide Triangular es: ~d" resultado)
) 

;Figura 3
(defparameter *pi* 3.1416)

(defun areaCirculo()
    (princ "Dame el radio del circulo: ")
    (setq radio (read))
    (setq resultado (* *pi* (* radio radio)))
    (format t "El area del Cicrulo es de: ~d" resultado)
)   

(defun volEsfera()
    (princ "Dame el radio de la esfera: ")
    (setq radio (read))
    (setq resultado (/ (* 4 *pi* (* radio (* radio radio))) 3))
    (format t "El volumen de la Esfera es de: ~d" resultado)
) 

;Figura 4
(defun areaRectangulo()
    (princ "Dame la base del rectangulo: ")
    (setq base (read))
    (princ "Dame la altura del rectangulo: ")
    (setq altura (read))
    (setq resultado (* base altura))
    (format t "El area del Rectangulo es de: ~d" resultado)
) 

(defun volOrtoedro()
    (princ "Dame la base del ortoedro: ")
    (setq base (read))
    (princ "Dame la altura del ortoedro: ")
    (setq altura (read))
    (princ "Dame el ancho del ortoedro: ")
    (setq ancho (read))
    (setq resultado (* base (* altura ancho)))
    (format t "El volumen del Otoedro es de: ~d" resultado)
) 

;Figura 5
(defun areaTrapecio()
    (princ "Dame la base mayor del trapecio: ")
    (setq base_mayor (read))
    (princ "Dame la base menor del trapecio: ")
    (setq base_menor (read))
    (princ "Dame la altura del trapecio: ")
    (setq altura (read))
    (setq resultado (/ (* altura (+ base_mayor base_menor)) 2))
    (format t "El area del Trapecio es de: ~d" resultado)
) 

(defun volPTrapezoidal()
    (princ "Dame la el area del trapecio: ")
    (setq area (read))
    (princ "Dame la altura del prisma trapezoidal: ")
    (setq altura (read))
    (princ "Dame la base menor del trapecio: ")
    (setq resultado (* area altura))
    (format t "El volumen del Prisma Trapezoidal es de: ~d" resultado)
) 

;Figura 6
(defun areaPentagono()
    (princ "Dame el perimetro del pentagono: ")
    (setq perimetro (read))
    (princ "Dame el apotema del pentagono: ")
    (setq apotema (read))
    (setq resultado (/ (* perimetro apotema) 2))
    (format t "El area del Pentagono es de: ~d" resultado)
) 

(defun volPPentagonal()
    (princ "Dame la el area del pentagono: ")
    (setq area (read))
    (princ "Dame la altura del prisma pentagonal: ")
    (setq altura (read))
    (setq resultado (/ (* area altura) 2))
    (format t "El volumen del Prisma Pentagonal es de: ~d" resultado)
) 

;Figura 7
(defun areaHeptagono()
    (princ "Dame el el tamaño del heptagono: ")
    (setq perimetro (read))
    (princ "Dame el apotema del heptagono: ")
    (setq apotema (read))
    (setq resultado (/ (* perimetro apotema) 2))
    (format t "El area de la Heptagono es de: ~d" resultado)
) 

(defun volPHeptagonal()
    (princ "Dame la el area del heptagono: ")
    (setq area (read))
    (princ "Dame la altura del prisma heptagonal: ")
    (setq altura (read))
    (setq resultado (/ (* area altura) 2))
    (format t "El volumen del Prisma Heptagonal es de: ~d" resultado)
) 

;Figura 8
(defun areaIcosaedro()
    (princ "Dame la longitud de lado del icosaedro: ")
    (setq lado (read))
    (setq resultado (* (sqrt 3) (* 5 (* lado lado))))
    (format t "El area del Icosaedro es de: ~d" resultado)
) 

(defun volIcosaedro()
    (princ "Dame la longitud de lado del icosaedro: ")
    (setq lado (read))
    (setq resultado (/ (* lado (+ 3 (sqrt 5))) 12))
    (format t "El volumen del Icosaedro es de: ~d" resultado)
) 

;Figura 9
(defun areaCono()
    (princ "Dame el radio del cono: ")
    (setq r (read))
    (princ "Dame el generatriz del cono: ")
    (setq g (read))
    (setq resultado (* (* *pi* r) (+ r g)))
    (format t "El area del Cono es de: ~d" resultado)
) 

(defun volCono()
    (princ "Dame el radio del cono: ")
    (setq r (read))
    (princ "Dame la altura del cono")
    (setq h (read))
    (setq resultado ( / (* *pi* (* (* r r) h)) 3))
    (format t "El volumen del Cono es de: ~d" resultado)
)

;Figura 10
(defun areaRomdo()
    (princ "Dame la diagonal mayor: ")
    (setq d_mayor (read))
    (princ "Dame la diagonal menor: ")
    (setq d_menor (read))
    (setq resultado (/ (* d_mayor d_menor) 2))
    (format t "El area del Rombo es de: ~d" resultado)
) 

(defun volOctaedro()
    (princ "Dame la longitud de lado del octaedro: ")
    (setq lado (read))
    (setq resultado (/ (* (sqrt 2) (* lado (* lado lado))) 3))
    (format t "El volumen del Octaedro es de: ~d" resultado)
)
```

<br>

<h2 style="color:orange">Ejercicios</h2>
<p>Resolución de 5 ejercicios utilizando todas las posibles estructuras de cond, when, unless, case y operadores lógicos</p>

``` txt

1. Una tienda que vende pantalones Dickies al menudeo y al mayoreo tiene
   las siguientes tarifas, si se compran menos de 5 pantalones estos se
   cobran a su precio normal, en caso de que se copren 5 o mas pero
   menos de 12 , se les descuenta el 15% en cada pantalon, si se compran
   mas de 12 se les descuenta 30% en cada pantalon.  Escriba un programa
   que pida como dato de entrada el numero de pantalones que se desean
   comprar y con ello imprima el total a pagar por la compra hecha.

2. Escriba un programa para determinar si un solicitante puede lograr un
   préstamo. Deberá pedir los siguientes datos para cada solicitante:
   Nombre, historia crediticia(‘b’buena o ‘m’ mala), cantidad pedida,
   salario anual, y valor de otras propiedades.  El banco solo
   considerará a los solicitantes con un estado de crédito bueno.  De
   aquellos, solo aceptara los que tengan mas de 6 puntos.  Los puntos
   se obtienen como sigue: 5 puntos si el salario es 50% del préstamo o
   más.  3 puntos si el salario es por lo menos 25% pero menos de 50%
   del préstamo.  1 punto si el salario es por lo menos 10% pero menos
   de 25% del préstamo.  5 puntos si se tiene otra propiedad del doble
   del préstamo o mas.  3 puntos si se tiene otra propiedad igual al
   préstamo pero menor del doble.

3. Escriba un programa que pida una letra minúscula, el programa deberá
   imprimir si la letra es una vocal (a,e,i,o,u), semivocal (y) o una
   consonante.

4. Para determinar si un año es bisiesto o no debe de cumplir las
   siguiente regla: Ser divisible entre 4 y no divisible entre 100 o
   bien divisible entre 400.  Escriba un programa que pida como entrada
   el año e imprima si el año es bisiesto o no.

5. Escriba un programa que pida el numero de mes (del 1 al 12 ) e
   imprima el numero de dias que tiene el mes, donde:

   • El mes 2 tiene 28 dias
   • Los meses 4,6,9 y 11 tienen 30 dias
   • Los meses 1,3,5,7,8,10 y 12 tienen 31 dias

   Si da un mes diferente a los anteriores debera imprimir el mensaje
   “MES ERRONEO”.

```

<h2 style="color:white">Código</h2>

``` lisp

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



```

<br>

<h2 style="color:orange">Área y volumen de 10 figuras con la función lamda</h2>
<p>Rescribir las funciones de área y volumen usando la función lamba</p>

``` lisp


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

```

<br>

<h2 style="color:orange">Arbol de tema libre</h2>
<p>Trabajo en el que se pidió realizar un árbol enario acerca de un tema libre para el akinator</p>

![arbol de smite](/imgs/arbol_smite.png)

<h2 style="color:orange">Arbol de genealogico</h2>
<p>Trabajo de hacer predicados monarios y binarios de el arbol genealógico</p>

``` prolog
% Arbol Genealógico
padre(israel).
padre(alejandro).
padre(martin).
padre(marco).
padre(victor)
padre(edson).

madre(marcela).
madre(mela).
madre(ester).
madre(ruby).
madre(alicia).
madre(norma).

padrede(israel, johann).
padrede(israel, scarlett).
padrede(israel, gibran).
madrede(marcela, johann).
madrede(marcela, scarlett).
madrede(marcela, gibran).

padre(alejandro, jorge).
padre(alejandro, nahomi rangel).
madre(mela, jorge).
madre(mela, nahomi rangel).

padrede(martin, miguel).
padrede(martin, martin alejandro).
padrede(martin, nahomi).
madrede(ester, miguel).
madrede(ester, martin alejandro).
madrede(ester, nahomi).

padre(marco, marco).
padre(marco, vinicio).
madre(ruby, marco).
madre(ruby, vinicio).

padrede(victor, leo).
padrede(victor, aranza).
padrede(victor, dante).
madrede(alicia, leo).
madrede(alicia, aranza).
madrede(alicia, dante).

padre(edson, roberto).
padre(edson, nored).
madre(norma, roberto).
madre(norma, nored).
```


