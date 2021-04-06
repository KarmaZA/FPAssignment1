import Data.list

perms :: [Int] -> [[Int]]
perms [] = [[]]
perms [x] = permutations[x]
