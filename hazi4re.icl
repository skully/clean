module hazi4re
import StdEnv



//1)
///szaaaaaaaaaaaaaaaaaaaaaaaaaaaar

Start= map`` [n,z] [2]
n x = x^2
z x = x+1
 
//fz [e:k] = 

//Start = map` (\x=x*x*x) [1..10]
// [1,4,9,16,25]
// ugyanaz, mint [ x*x*x \\ x<-[1..10]]

map` f [] = []
map` f [h:t] = [f h:map` f t]

map`` f [] = []
map`` [] [] = []
map`` [] f = []
map`` [h:t] f = [map` h f : map`` t f] 
///eddig szaaaaaaaaaaar, estere ki lesz javitva, remelem!



//2)
//kicsit altalanositani nem artana!
//Start = [f [1..10],g [1..10], h [1..10]]
/*f []=[]
f l = take 1 l ++ f(drop 3 l)
g []=[]
g l = drop 1 ( take 2 l) ++ g (drop 3 l)
h [] = [] 
h l = drop 2 ( take 3 l) ++ g (drop 4 l)
*/
