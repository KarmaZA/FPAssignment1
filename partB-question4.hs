split :: [Int] -> [([Int],[Int])]
split [] = [([],[])]
split [x] = [([x],[])]
--So this isn't the correct syntax but I do think this is the route to the answer. use a generator from 1 to length and take that num from the list
split xs = 
