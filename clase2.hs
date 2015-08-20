
--calcular el doble de un numero
doble x = 2 * x

--sumar dos numeros
suma x y = x + y

--calcular la norma vectorial de dos numeros
normaVectorial v1 v2 = sqrt (v1^2 + v2^2)

-- calcular el signo + o - de un numero
signo n | n > 0 = 1
    | n == 0 = 0
    | n < 0 = -1


-- calcularel valor absoulto de un numero, usar funcion anterior
absoluto j = (signo j) * j

-- encontrar el maximo entre dos numeros
maxEntreDosNum x y | x > y = x
   	 | otherwise = y

-- encontrar el maximo entre tres numeros
maxEntreTresNum x y z = maxEntreDosNum (maxEntreDosNum x y) z

--usar booleans, True or False
--si el numero es positivo responder True:   	 
esPositivo x = x > 0


--Ejercicio de tabla de verdad de conjuncion logica:
-- conjuncion logica, solucion 1:
ylogico True True = True
ylogico False True = False
ylogico True False = False
ylogico False False = False

-- conjuncion logica, solucion 2:
ylogico1 True True = True
ylogico1 _ _ = False

-- conjuncion logica, solucion 3:
ylogico2 True True = True
ylogico2 x y = False


--tarea 1
funcionDeTresNs n1 n2 n3
    | n2 < 10 = n1
    | n2 >= 10 = n1 + n3
