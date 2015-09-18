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


-- calcular el valor absoulto de un numero, usar funcion anterior
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


--tarea 19/08/2015
funcionDeTresNs n1 n2 n3
    | n2 < 10 = n1
    | n2 >= 10 = n1 + n3

--funcion nand (x,y) = ¬ (x ^ y)  | && = and, || = or
nand_equals_nor x y = not ( x && y ) == not ( x || y )

--este funciona: 
-- not ((2<4) && (3<6)) == not ((2<4) || (3<6))

--funcion nor (x,y) = ¬ (x v y)
nor_equals_nand x y = not ( x || y ) == not ( x && y )

-- a,b,c pertenece a lo numeros reales. Calcular alguna de las raices de la funcion cuadratica
-- f (x) = ax^2 + bx^2 + c

raiz_negativa a b c = ( -(b) + ( sqrt ( (b^2)  - (4 * a * c) ) ) / (2 * a) )
raiz_positiva a b c = ( -(b) - ( sqrt ( (b^2)  - (4 * a * c) ) ) / (2 * a) )
    
-- es pitagorica con tres parametros a,b,c y diga si existe un triangulo rectangulo donde a y b sean las medidas de los
-- catetos y c la de la hipotenusa. por ejemplo 3, 4 y 5

esPitagorica a b c = (c^2) == (a^2) + (b^2)

-- calcular la hipotenusa de un triangulo:
hipotenusa a b = sqrt ( (a^2) + (b^2) ) 


----copia ultima clase:
-- funcion recursiva que calcula un factorial
fact :: Integer -> Integer

fact n 	| n == 0 = 1
	| otherwise = n * fact (n-1)

--opcion2
factorial :: Integer -> Integer
factorial n | n == 0 = 1
factorial n | n > 0 = n * factorial (n-1)

-- función recursiva
-- que calcule la potenica a^n con (n>=0):

potencia :: Float -> Integer -> Float

potencia a n 
	| n == 0 = 1 
	| otherwise = a * ( potencia a (n-1))

{-
EJERCICIO 4
Escribir una funcion que dado n ∈ Naturales, sume los 
numeros impares positivos cuyo cuadrado sea menor que n. 
Por ejemplo:
sumaImparesCuyoCuadSeaMenorQue 30 -> 1+3+5 -> 9.
-}

sumaCuadrados x y = (x * x) + (y * y)


--sumaImparesCuyoCuadSeaMenorQue n
--	| (x > o) && (x `mod` 2 == 0) = x + 1
--	| (y > o) && (y `mod` 2 == 0) = y + 1	

-- Taller: 19.09.2015
pertenece :: Integer -> [Integer] -> Bool
pertenece x xs | length xs == 0 = False
pertenece x xs = head xs == x || pertenece x (tail xs)


hayrepetidos :: [Integer] -> Bool
hayrepetidos l | l == [] = False
hayrepetidos l = hayrepetidos (tail l) || pertenece (head l) (tail l)

menores :: Integer -> [Integer] -> [Integer]
menores n lista 
	| 
	



	
