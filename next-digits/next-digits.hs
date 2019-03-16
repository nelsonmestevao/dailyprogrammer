module Main where

import Data.Char
import System.Environment (getArgs)

nextDigit :: Char -> String
nextDigit '9' = "10"
nextDigit c =
  let n = intToDigit . succ . digitToInt $ c
   in [n]

main = getArgs >>= putStrLn . concatMap nextDigit . head
