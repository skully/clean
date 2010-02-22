module minta
import StdEnv

// fuggveny alternativak mintaillesztessel
// 
// A forditas soran egy figyelmeztetest kapunk, hogy a fuggveny parcialis ("function may fail")
//
f :: Int -> Int
f  3 = 4
f  5 = 7

Start = f 3
// 4

Start` = f 4
// Run time error, rule 'f' in module 'minta' does not match


f` :: Int -> Int
f` 3 = 4
f` 5 = 7
f` n = n

Start``  = f` 4
// 4

// a fuggveny alternativak sorrendje szamit!
Start```  = f` 5
// 7


// sajat hibauzenet
f`` :: Int -> Int
f`` 3 = 4
f`` 5 = 7
f`` n = abort "Futasideju hiba: Az 'f' fuggveny a 'minta' modulban nem illeszkedik."

Start`4 = f`` 11
// Futasideju hiba: Az 'f' fuggveny a 'minta' modulban nem illeszkedik.


// ugyanaz, mint f``
// a mindenre illeszkedo minta neve: wildcard
f``` :: Int -> Int
f``` 3 = 4
f``` 5 = 7
f``` _ = abort "Futasideju hiba: Az 'f' fuggveny a 'minta' modulban nem illeszkedik."


