# Sudoku Solver in Haskell

Haskell implementation of a constraint based Sudoku solver in comparision with Peter Norvig's
[Python implementation](http://norvig.com/sudoku.html).

## Installation
```shell
git clone https://github.com/pbing/sudoku_hs.git
cd sudoku_hs
```

## Run tests
```shell
cabal test
```

## Run Benchmarks
Benchmarks where run on an Apple M1 Pro Macbook Pro with 32 GB RAM.

### Python
```shell
% python3 sudoku.py
All tests pass.
Solved 50 of 50 easy puzzles (avg 0.00 secs (544 Hz), max 0.00 secs).
Solved 95 of 95 hard puzzles (avg 0.01 secs (167 Hz), max 0.03 secs).
Solved 11 of 11 hardest puzzles (avg 0.00 secs (447 Hz), max 0.00 secs).
```

### Haskell
```shell
cabal run exe:sudoku-hs -- python/sudoku-easy50.txt
Solved 50 of 50 puzzles (avg. 5.93608e-3 secs (168.46134149135457 Hz)).

cabal run exe:sudoku-hs -- python/sudoku-top95.txt
Solved 95 of 95 puzzles (avg. 2.9449704842105264 secs (0.33956197705936436 Hz)).

cabal run exe:sudoku-hs -- python/sudoku-hardest.txt
Solved 11 of 11 puzzles (avg. 5.9808e-2 secs (16.720171214553236 Hz)).
```

### Averaged
|           | Python | Haskell |
|-----------|--------|---------|
| time      | 0.003  | 1.004   |
| frequency | 298    | 0.996   |

## References
* <https://wiki.haskell.org/Sudoku>
* [Richard Bird, Functional pearl, a program to solve Sudoko.](https://www.cs.tufts.edu/~nr/cs257/archive/richard-bird/sudoku.pdf)
* [Graham Hutton, Advanced functional programming, Sudoku code.](http://www.cs.nott.ac.uk/~gmh/sudoku.lhs)
