module Main where

import System.Environment(getArgs)
import Data.Char(digitToInt)

staircase :: Int -> String
staircase n = stair n (n-1) ++ ['\n']

stair :: Int -> Int -> String
stair n 0 = replicate n '#'
stair n a = replicate a ' ' ++ replicate (n-a) '#' ++ ['\n'] ++ stair n (a-1)

main = do
    args <- getArgs
    putStr $ staircase $ digitToInt $ head $ head args


