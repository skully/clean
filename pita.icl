module pita
import StdEnv

// az osszes pitagoraszi szamharmas

Start = take 100 [(a,b,c) \\ c<-[1..], b<-[1..c], a<-[1..b] | a*a + b*b == c*c]


// az osszes pitagoraszi szamharmas, gyorsitott verzio

Start` = [(a,c) \\ c<-[1..], a<-[1..c] | maybe_pita a c]

maybe_pita a c = a<b && b*b == bb
where
    bb = c*c-a*a
    b = toInt (sqrt (toReal bb))


