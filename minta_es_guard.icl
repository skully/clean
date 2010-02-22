module minta_es_guard
import StdEnv

g  n  0  | isEven n =  n
g  n  0   =  n+1
g  _  _   =  42

/*
g egy olyan ket parameteru fuggveny, ami 42-t ad vissza, ha a masodik parameter nem 0,
egybekent pedig felkerekiti az elso parametert a legkozelebbi paros szamig.
*/

Start = g 4 4
// 42

Start` = g 4 0
// 4

Start`` = g 5 0
// 6


// g egy masik megfogalmazasban

g`  n m | m<>0  = 42
g`  n _
    | isEven n = n
    | isOdd n  = n+1





/*
Feladat:
Adjuk ossze ket szamot, es adjunk meg az osszeghez 1-et, ha paratlan az eredmeny.
*/

Start``` = h  5  6
// 12-nek kell lenni


// 1. megoldas

// isEven az StdEnv-ben definialt
h  n  m   | isEven (n+m) = n+m
h  n  m   =  n+m+1


// 2. megoldas

h` n  m  =  make_even (n+m)

make_even x | isEven x = x
make_even x = x+1


