module Parser (parse) where

import Sudoku

parse :: FilePath -> IO [Grid]
parse fp = map (split 9) . lines <$> readFile fp

split :: Int -> [a] -> [[a]]
split n xs
  | n >= length xs = [take n xs]
  | otherwise = take n xs : split n (drop n xs)
