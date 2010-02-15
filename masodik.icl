module masodik
import StdEnv

//Start = [1,4..100] //szamtani sorozat 
//Start = prod [1..10] //10!
//Start = ( prod [1..6] ) / (( prod [1..3] ) * ( prod [1..(6-3)] ))  //6 alatt a 3
//Start = (alatt 90 5) - (alatt 45 6) //meg kell nezni //5os vagy 6oslotto
//Start = 532253373 rem 23==0 //osztja-e
//Start = alatt 6 3 //onszorgalom :)
//Start = not True //try
//Start = 3<>4 //try
//Start = [1..] //vegtelen generator
//Start = [n^2\\n<-[1..]| n rem 2 == 0] //halmazkifejezesek
//Start = [2^n \\ n<-[0..]] 
//Start = hd [2^n \\ n<-[0..]| 2^n>10^20] 
//Start = [ n \\ n<-[0..] | 60 rem n == 0 ] 
//Start = length [ n \\ n<-[0..30] | 60 rem n == 0 ] 
//Start = (length [n \\ n<-[0.. (123457/2) ] | 123457 rem n == 0 ]) ==2
//Start = [n rem  2 == 0 \\ n<-[0..9]]
//Start = mountain 1 
//Start = sumto 2
//Start = issqare 4 
Start = csii 4 6 //negyzetszamok szamolasa intervallumon
//Start = 
//Start = 
//Start = 

mountain :: Int -> [Int]
mountain a = [1..a]++[a-1, a-2..1]

sumto :: Int -> Int
sumto a = sum [ n^2 \\ n<-[1..a] ] 

issqare :: Int -> Bool
issqare a = or [n^2==a \\ n<-[1..a]] 

csii :: Int  Int -> Int
csii  a b = length [ n \\n<-[a..b]| issqare n ]


///////
prime a = (length [n \\ n<-[0.. (a/2) ] | a rem n == 0 ]) ==2

alatt a b = ( prod [1..a] ) / (( prod [1..b] ) * ( prod [1..(a-b)] ))