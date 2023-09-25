(defun recorre (lista)
    (format t "~A-> ~% ~A" (car lista))
    (if lista
        (recorre (cdr lista))
    )
)

;encontrar si un elemento de la lista exista
;hacer commit 