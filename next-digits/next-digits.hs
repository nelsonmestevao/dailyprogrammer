module Main where

import Data.Char
import System.Environment (getArgs)

nextDigit :: Char -> String
nextDigit '9' = "10"
nextDigit c = [increase c]
  where
    increase = intToDigit . succ . digitToInt

main = getArgs >>= putStrLn . concatMap nextDigit . head
