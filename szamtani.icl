module szamtani
import StdEnv

Start = szamtani3 -1 2      // => 5

// megadja a szamtani sor kovetkezo elemet
szamtani3 a b = b + (b-a)

//// a tovabbi definicok nem szuksegesek a mukodeshez

// mas megoldas
szamtani3` a b = 2*b - a

Start` = szamtani_n 1 2 22     // => 22

// megadja a szamtani sor n-edik elemet az elso kettobol
szamtani_n a b n = a + (n-1)*d
where
	d = b - a

