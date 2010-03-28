module hazi5re
import StdEnv

//1)


/*Start= mysort [2,3,4,1]

mysort [] = []
mysort [h:t] = ins h ( mysort t)

ins e [] = [e]
ins e [h:t] 
	|e <= h		= [e, h : t]
			 = [h : ins e t ] 

*/

//2)


