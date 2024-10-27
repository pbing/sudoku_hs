module Parser (parse) where

import Sudoku

parse :: FilePath -> IO [Grid]
parse fp = map (chop 9) . lines <$> readFile fp
