;(defun recorre(lista)
 ;(if (equal lista nil) 
  ;nil
  ;(progn 
   ; (princ (car lista))
    ;(recorre(cdr lista))
  ;)
 ;)   
;)

(defun recorre(lista)
 (if (equal lista nil) 
  nil
 )   
 (princ (car lista))
 (recorre(cdr lista))
)
