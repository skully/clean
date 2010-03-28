module nfib
import StdEnv

// A fuggveny erdekessege, hogy az erteke megegyezik a fuggvenyhivasok szamaval.


Start = nfib 40

nfib 0 = 1
nfib 1 = 1
nfib n = 1 + nfib (n-1) + nfib (n-2) 


///// mas megvalositasok

nfib` n | n<2 = 1
nfib` n = 1 + nfib (n-1) + nfib (n-2) 
// az eredmeny kb ugyanaz

nfib`` n = if (n<2) 1 (1 + nfib (n-1) + nfib (n-2))
// az eredmeny kb ugyanaz

nfib``` n = 1 + if (n<2) 0 (nfib (n-1) + nfib (n-2))
// az eredmeny kb ugyanaz

