split :: [Int] -> [([Int],[Int])]
split [] = [([],[])]
split [x] = error "Not enough elements"
--So this isn't the correct syntax but I do think this is the route to the answer. use a generator from 1 to length and take that num from the list
split m = do
    let l = length m
    split1 (l-1) m

split1 1 xs = do
    let l = length xs
    [ ( take (l-1) xs, drop (l-1) xs) ] 

split1 x xs = do
    let l = length xs
    [ (take (l-x) xs, drop (l-x) xs) ] ++ split1 (x-1) xs
