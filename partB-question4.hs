--Splits the list into a set of tuples that contain two lists that add up to become the initial list
split :: [Int] -> [([Int],[Int])]
split [] = [([],[])] --empty list condition
split [x] = error "Not enough elements" -- too few condition
split m = do
    let l = length m
    split1 (l-1) m -- recursion

split1 1 xs = do 
    let l = length xs
    [ ( take (l-1) xs, drop (l-1) xs) ] 

split1 x xs = do
    let l = length xs
    [ (take (l-x) xs, drop (l-x) xs) ] ++ split1 (x-1) xs
