perms :: [Int] -> [[Int]]
perms [] = [[]]
perms m = [a:x | a <- m, x <- (perms $ filter (\x -> x/= a) m)]
