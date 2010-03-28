module hazi3ra
import StdEnv

//1)

//Start = take 10 [ (a, b, c, d) \\d<-[1..], c<-[1..d], b<-[1..c], a<-[1..b] | a^2+b^2+c^2==d^2 ] 

//2*)



//3)

Start = repeatitemtimes (primes 10)
repeatitemtimes s = [y \\ y<-(s), x<-[1..y]] 				//annyiszor ismetel elemeket 
															//adott sorozatbol, 
															//amennyi az adott elem erteke
primes x = take x	[ x \\ x<-[1..] | isprime x ] 			//elso x db prim
isprime x = (length [ n \\ n<-[1..x]| x rem n == 0 ]) <= 2 	//egy adott szam prim-e