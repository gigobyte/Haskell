{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module SudokuSolver where

import           Data.List.Split (chunksOf)
import           Text.Read       (readMaybe)

data Cell = Filled Int | Empty deriving (Show, Eq)

newtype GridInput = GridInput { unGridInput :: String } deriving (Show, Eq)
newtype Grid = Grid { unGrid :: [[Cell]] } deriving (Show, Eq)

mkGridInput :: String -> Maybe GridInput
mkGridInput input
    | length input == 9 = Just $ GridInput input
    | otherwise = Nothing

mkCell :: Char -> Maybe Cell
mkCell '.'  = Just Empty
mkCell cell = Filled <$> readMaybe [cell]

mkGrid :: GridInput -> Maybe Grid
mkGrid = fmap (Grid . chunksOf 3) . mapStringToCells
    where
        mapStringToCells :: GridInput -> Maybe [Cell]
        mapStringToCells = traverse mkCell . unGridInput

solve :: String -> Maybe Grid
solve input = mkGridInput input >>= mkGrid
