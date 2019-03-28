import Data.List
main=interact$unlines.(\k->nub[unwords$show<$>[x,y,z]|x:r<-tails k,y:e<-tails r,z<-e,-z==x+y]).sort.map read.words
