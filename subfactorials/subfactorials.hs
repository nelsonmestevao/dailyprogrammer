module Subfactorials where

derangement :: Int -> Int
derangement 0 = 1
derangement 1 = 0
derangement n = (*) (n-1) $ derangement (n-1) + derangement (n-2)

