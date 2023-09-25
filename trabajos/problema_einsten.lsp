(defparameter *datos*  
    
    '(preal
    (vivo
     (mexicano
        (artista
        (hombre)
        (mujer)
        )
        (personaje historico
        (hombre)
        (mujer)
        )
     )
     (ruso
        (artista
        (hombre)
        (mujer)
        )
        (personaje historico
        (hombre)
        (mujer)
        )
     )
     (americano
        (personaje historico
        (hombre)
        (mujer)
        )
     )
    )

    (muerto
      (mexicano
        (artista
        (hombre)
        (mujer)
        )
        (personaje historico
        (hombre)
        (mujer)
        )
     )
     (ruso
        (artista
        (hombre)
        (mujer)
        )
        (personaje historico
        (hombre)
        (mujer)
        )
     )
     (americano
        (personaje historico
        (hombre)
        (mujer)
        )
     )  
    )
    )

    (pnreal
    (videojuego
      (shooter
       (COD
        (hombre
         (Capitan Price)
        )
        (mujer
         (Ema Victorova)
        )
        (animal
         (Racha de perros)
        )
       )
      )
      (moba
       (SMITE
        (hombre
         (Zeus Hades)
        )
        (mujer
         (Hera Artemisa)
        )
        (animal
         (Kukulkan Ratatosker)
        )
       )
       (LOL
        (hombre)
        (mujer)
        (animal)
       )
      )
      (survival
       (ARK
        (hombre)
        (mujer)
        (animal)
       )
       (MINECRAFT
        (hombre)
        (mujer)
        (animal)
       )
      )   
    )
    (caricatura
     (hombre)
     (mujer)
     (animal)
    )  
    )
)

;Codigo en LISP

;*datos* Imprime todo el nodo
;(assoc 'alto(assoc 'preal *datos*))
:(assoc 'alto(cdr(assoc 'preal *datos*)))