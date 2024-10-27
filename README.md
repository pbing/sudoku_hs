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
cd python
python3 sudoku.py
All tests pass.
Solved 50 of 50 easy puzzles (avg 0.00 secs (544 Hz), max 0.00 secs).
Solved 95 of 95 hard puzzles (avg 0.01 secs (167 Hz), max 0.03 secs).
Solved 11 of 11 hardest puzzles (avg 0.00 secs (447 Hz), max 0.00 secs).
Solved 10000 of 10000 grids10k puzzles (avg 0.00 secs (510 Hz), max 0.04 secs).
```

### Haskell
```shell
cabal run exe:sudoku-hs -- python/sudoku-easy50.txt
Solved 50 of 50 puzzles (avg. 3.22368e-3 secs (310.20448679769703 Hz)).

cabal run exe:sudoku-hs -- python/sudoku-top95.txt
Solved 95 of 95 puzzles (avg. 0.5373875789473684 secs (1.8608543240965747 Hz)).

cabal run exe:sudoku-hs -- python/sudoku-hardest.txt
Solved 11 of 11 puzzles (avg. 1.5199363636363638e-2 secs (65.79222814352275 Hz)).

cabal run exe:sudoku-hs -- python/sudoku-10k.txt
Solved 10000 of 10000 puzzles (avg. 1.1594253929 secs (0.8624962038296927 Hz)).
```

### Averaged
|           | Python | Haskell |
|-----------|--------|---------|
| time      | 0.003  | 0.429   |
| frequency | 332.7  | 2.332   |

## References
* <https://wiki.haskell.org/Sudoku>
* [Richard Bird, Functional pearl, a program to solve Sudoko.](https://www.cs.tufts.edu/~nr/cs257/archive/richard-bird/sudoku.pdf)
* Bird R. A simple Sudoku solver. In: Thinking Functionally with Haskell. Cambridge University Press; 2014:89-109.
* [Graham Hutton, Advanced functional programming, Sudoku code.](http://www.cs.nott.ac.uk/~gmh/sudoku.lhs)
