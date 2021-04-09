--deletes the first occurence of a specific number from the list
delete :: Int -> [Int] -> [Int]
delete _ [] = []
delete el (x:xs)
        | (el==x) = xs --if the head
        | otherwise = x : delete el xs --recursion 
