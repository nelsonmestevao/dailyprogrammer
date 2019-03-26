module Main where

import Data.List
import Data.Maybe

findTupple :: [Int] -> Maybe (Int, Int, Int)
findTupple [h] = Nothing
findTupple (h:t) =
  if p `elem` tail t
    then Just (h, head t, p)
    else findTupple t
  where
    p = -h - head t

findAllTupples :: [Int] -> [Maybe (Int, Int, Int)]
findAllTupples [] = []
findAllTupples l@(h:t) = findTupple l : findAllTupples t

main =
  interact $
  unlines .
  map show . sort . nub . catMaybes . findAllTupples . map read . words
