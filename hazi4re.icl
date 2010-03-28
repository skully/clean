module hazi4re
import StdEnv



//1)

/*
Start = compose` [n,z] [3,5]   

n x = x^2
z x = x+1

compose` [] [] = []
compose` [] l = l
compose` l [] = []
compose` l k = [ x y \\ x<-(compose l), y<-k  ] 


compose [] = []
compose [a, b : t] = [a o b : t ] */


//2)
//kicsit altalanositani nem artana!
/*Start = [f [1..10],g [1..10], h [1..10]]
f []=[]
f l = take 1 l ++ f(drop 3 l)
g []=[]
g l = drop 1 ( take 2 l) ++ g (drop 3 l)
h [] = [] 
h l = drop 2 ( take 3 l) ++ g (drop 4 l)
*/
