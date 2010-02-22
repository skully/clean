module minta2
import StdEnv

g  n  0   =  n+1
g  2  m  =  m
g  3  4   =  15
g  n  m   =  n + m

Start = g 0 0
// 1,  az elso alternativa illeszkedik legkorabban

Start` = g 2 2
// 2,  a masodik alternativa illeszkedik legkorabban

Start`` = g 2 0
// 3,  az elso alternativa illeszkedik legkorabban

Start``` = g 0 1
// 1,  az utolso alternativa illeszkedik
