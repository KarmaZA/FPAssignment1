-- Halve using library functions. uses splitAt half the length of the function. Assumes that the input is an even length.
halve :: [a] -> ([a],[a])
halve l = splitAt ((length l) `div` 2) l  
