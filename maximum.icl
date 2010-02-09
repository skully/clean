module maximum //fajl neve
import StdEnv 



 
Start = max3 5 -1 3      // => 5 
//fv-t kiertekeljuk, 3 parameterrel
// egy start van!
// kivalasztja a maximumot 3 szambol
max3 a b c
    | a>=b && a>=c    = a
    | b>=a && b>=c    = b
                      = c //otherwise
                      //esetszétválasztás

//// a tovabbi definicok nem szuksegesek a mukodeshez

// mas megoldas
max3` a b c = max2 a (max2 b c) //masik megoldas, fuggvenykompozicioval

max2 a b
    | a > b    = a
    = b

// mas megoldas max2-re
max2` a b = if (a>b) a b //2. megoldas a max2-re, c makro szeru
