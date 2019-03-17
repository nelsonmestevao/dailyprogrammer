module Main where

import Data.Char
import System.Environment (getArgs)

additive :: String -> String
additive s
  | x < 10 = show x
  | otherwise = additive $ show x
  where
    x = sum $ map digitToInt s

main = getArgs >>= putStrLn . additive . head
