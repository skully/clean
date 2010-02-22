module szita
import StdEnv

// kiszitalja az elso parameterrel oszthato szamokat
// szita 3 [1,3,7,4,6,2] = [1,7,4,2]
//
szita :: Int [Int] -> [Int]
szita n lista = [x \\ x<-lista | x rem n<>0]

// a lista elso elemevel szitalunk:
szita` :: [Int] -> [Int]
szita` lista = szita (hd lista) lista

/*
A szita mukodesi elve:

A szamok 2-tol:
l0=[2..]

A szamok 2-tol, kiveve a 2-vel oszthatoakat (hd l=2):
l1=szita` l0

A szamok 2-tol, kiveve a 2-vel es 3-mal oszthatoakat (hd l`=3):
l2=szita` l1

l3=szita` l2

l4=szita` l3

A primek a 
szitak= [l0,l1,l2,l3,...]
listaban levo listak fejei.
*/

iterate` :: (a->a) a -> [a]
iterate` f x = [x] ++ iterate` f (f x)
// iterate` f x =  [x, f x, f (f x), f (f (f x)), ...]

szitak = iterate` szita` [2..]

primek = [hd x \\ x <- szitak]

Start = take 100 primek
