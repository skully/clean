module lista_minta
import StdEnv

// egyszeru mintak

sum` [] = 0
sum` [a] = a
sum` [a,b] = a + b
sum` [a,b,c] = a + b + c

Start = sum` [3,4]
// 7


// fej-farok minta

s [] = 0
s [h:t] = h + s t

Start` = s [4,5,6]
/* 
Start` = s [4,5,6] = 4+s [5,6] = 4+(5+s [6]) = 4+(5+(6+s [])) = 4+(5+(6+0)) = 15
*/


// lista hossza

f []  = 0
f [h:t] = 1 + f t

Start`` = f [5,6,2]
/* 
Start`` = f [5,6,2] = 1+f [6,2] = 1+(1+f [2]) = 1+(1+(1+f [])) = 1+(1+(1+0)) = 3
*/
