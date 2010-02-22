module harmadik
import StdEnv

//Start = [fib x \\ x<-[1..8]]
//fibonacci

fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

//Start = [(a, b) \\ a<-[1..b], b<-[1..100] | a + b == 100]

//Start = [2^x \\ x<-[0..10]]

//Start= ize 100


//Start=[[1..x]\\x<-[1..10]] //pirospontos :P csak kerek zarojelbe



//Start = f 2 2

f a b | isEven (a+b) = a+b
f a b =a+b+1


//Start= max2 1 2 8

max1 a b | a<b = b
    	= a 

max2 a b c | a>max1 b c =a
			=max1 b c
			
			
Start = 

sort a c b 	|a>b
				|b>c	= (a,b,c)
				|c>b
					|c>a	= (c,a,b)
					
					
					
//a^2+b^2+c^2=d^2 a<b<c<d 10 db

//pirospontos

//prim szamok 10 db tobbszorozve 1 lista


				