-- Implementing the product function. An empty list returns one of a non-empty list uses recursion to compute the product. Had to use Main.product in the code because it's overwriting a function and had to specify the recursion to use this function
product :: [Integer] -> Integer
product []     = 1
product (x:xs) = x * Main.product xs
