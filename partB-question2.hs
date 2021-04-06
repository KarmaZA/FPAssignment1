delete :: Int -> [Int] -> [Int]
delete _ [] = []
delete el (x:xs)
        | (el==x) = xs
        | otherwise = x : delete el xs 
