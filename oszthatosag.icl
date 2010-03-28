module oszthatosag
import StdEnv

Start = osztja 16 4      // => False

// igaz, ha a osztoja b-nek
osztja a b = b rem a == 0

//// a tovabbi definicok nem szuksegesek a mukodeshez

Start` = osztja_vmelyik 16 4      // => True

// igaz, ha a osztoja b-nek vagy forditva
osztja_vmelyik a b = osztja a b || osztja b a

