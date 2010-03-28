module hetedik
import StdEnv

//nem negyzet

issqare a = or [n^2==a \\ n<-[1..a]] 
sq a =[ n \\n<-[1..a]| not( issqare n) ]
//Start= sq 100



//osszetett

//Start= take 10 [n \\ n<-[1..] | length (fact n )>2  ]

fact a =[n \\ n<-[1..a] | a rem n == 0]



//nem osszetett
//Start = take 10 [n \\ n<-[1..] | length (fact n )<=2  ]



//inits [1,2,3,4]->[[1,2,3][1,2][1][]]

//Start = inits 4
inits a = [[1..n]\\ n<-[a-1, a-2..0]]


//tails [1,2,3,4]->[[2,3,4][3,4][4][]]
//Start=tails 4
tails a = [[n..a]\\ n<-[2..a+1]]

//[1,2,3,4]->[[][1][2][3][4][1,2][1,3][1,4][2,3]....] 


//[1..8]->[[8,4,3,2,1][7,6,5]....] 



//HF!
/*
sublist  n l
l- hany elemet hagytunk ki a generalt elem pedig hogy mi lehet
*/

/*
slideokon levo 8 kiralynohoz hasonloan 8 bastya
*/