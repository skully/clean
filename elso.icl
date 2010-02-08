module elso
import StdEnv
//Start = 2 + 3
//Start = 2 * 3
//Start = 2 - 3
//Start = 3 / 2 //Nice :)



//Start = 365 * 24 * 60 * 60 //mp pro year
//Start = 11 + 112 * (301 - 11) //szamtani sorozat 113. eleme
//Start = 11 ^ 2
//Start = (4.0 * 3.14 * (1.01 ^ 3.0))/3.0 //r=1.01 gomb terfogata

//Start = 4 - (4*4*4) - 4 //helyes zj
//Start = sqrt 2.0 //sqrt2
//Start = -6 + (-2) //-6-2
//Start = 3 + (-10)  //3+-10

//Start =[1,3..110] //szamtani sorozat
//Start = [2,4..200] //párosak 200-ig
//Start = [10, 9 .. -10] // 10 -> -10
//Start = sum [1..3]//szumma
//Start = prod [1..3] //produktum
//Start = sum [2,4..200] // parosak osszege

//Start = 6 rem 5 //osztási maradék

//Start = osztja 23 532253373 //osztoja -e 23 a 532253373 -nak

//Start = osztjavmelyik 23 532253373 // opsztja -e egymast

//Start = 3>2||4 == 1+ 2 -3 *5
//Start = hd [1..3]//elso elem
//Start = tl [1..3] //elsot kiveve
//Start = take 3 [1..10] //elso x elem
//Start = drop 3 [1..10] //elso x-t kiveve
Start = take 3 [1..10] ++ drop 3 [1..10] //eredeti lista
//Start = 

osztja a b = b rem a == 0

osztjavmelyik a b = osztja a b || osztja b a