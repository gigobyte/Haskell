module Main where

import           SudokuSolver

main :: IO ()
main = getLine >>= (print . solve)
