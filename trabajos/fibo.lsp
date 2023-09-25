(defun fibo(x)
    
    (setq a '0)
    (setq b '1)

    (if (= x 1)
    a
    )

    (if (= x 2)
    b
    )

    (+ (fibo(- x 1)) (fibo(- x 2))
    )
)