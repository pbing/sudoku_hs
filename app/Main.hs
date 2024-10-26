module Main where

import System.CPUTime (getCPUTime)
import System.Environment (getArgs)
import System.IO

import Sudoku
import Parser

main :: IO ()
main = do
  [fp] <- getArgs

  -- solve all grids in file
  time0 <- getCPUTime
  grids <- parse fp
  let n0 = length grids
  --let results = map solve grids
  let results = (filter (not . null) . map solve) grids
  let n1 = length results

  -- force deep evaluation
  devNull <- openFile "/dev/null" WriteMode 
  hPrint devNull results
  time1 <- getCPUTime
  
  -- calculate statistics
  let dt = (fromInteger (time1 - time0) * (1.0e-12 :: Double)) / fromIntegral n0
  let f = 1.0 / dt
  putStrLn $ "Solved " <> show n1 <> " of " <> show n0 <> " puzzles (avg. " <> show dt <> " secs (" <> show f <> " Hz))."
  
