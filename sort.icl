module sort
import StdEnv

Start = sort3 -1 5 2      // => (-1, 5, 2)

// sorrendbe rak 3 szamot
sort3 a b c
    | a<b
        | b<c       = (a,b,c)
        | a<c       = (a,c,b)
        | otherwise = (c,a,b)
    | c<b           = (c,b,a)
    | a<c           = (b,a,c)
                    = (b,c,a)

/*
Megjegyzes:
Kesobb egyszerubben es altalanosabban is megoldjuk a feladatot.
*/
