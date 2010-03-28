// Eratoszthenészi szita
module Sieve
import StdEnv

oszt x y = y rem x <> 0

f [h:t] = [h : f (filter (oszt h) t)]

Start = f [2..]
 
/*
	f [2..]
=	f [2:[3..]]
=	[2 : f (filter (oszt 2) [3..])]
=	[2 : f (filter (oszt 2) [3:[4..]])]
=	[2 : f [3 : filter (oszt 2) [4..]]]
=	[2 : [3 : f (filter (oszt 3) (filter (oszt 2) [4..])]]
=	[2, 3 : f (filter (oszt 3) (filter (oszt 2) [4..])]
=	[2, 3 : f (filter (oszt 3) (filter (oszt 2) [4:[5..]])]
=	[2, 3 : f (filter (oszt 3) (filter (oszt 2) [5..])]
=	[2, 3 : f (filter (oszt 3) (filter (oszt 2) [5:[6..]])]
=	[2, 3 : f (filter (oszt 3) [5: filter (oszt 2) [6..]]]
=	[2, 3 : f [5: filter (oszt 3) (filter (oszt 2) [6..])]]
=	[2, 3, 5 : f (filter (oszt 5) (filter (oszt 3) (filter (oszt 2) [6..])))]
=	[2, 3, 5 : f (filter (oszt 5) (filter (oszt 3) (filter (oszt 2) [6:[7..]])))]
=	[2, 3, 5 : f (filter (oszt 5) (filter (oszt 3) (filter (oszt 2) [7..])))]
=	...
*/


