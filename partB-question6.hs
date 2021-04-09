--Code from Question B1

data Expr = Val Int | App Op Expr Expr
data Op = Add | Mul

eval :: Expr -> Int
eval (Val x) = x
eval (App Add x1 x2) = sum (values x1 ++ values x2)
eval (App Mul x1 x2) = product(values x1 ++ values x2) 

values :: Expr -> [Int]
--elements [] = []
values (Val x) = [x]
values (App Add x y) = values x ++ values y
values (App Mul x y) = values x ++ values y

--code from Question B2

delete :: Int -> [Int] -> [Int]
delete _ [] = []
delete el (x:xs)
        | (el==x) = xs
        | otherwise = x : delete el xs 
        
        
--code from Question B3

perms :: [Int] -> [[Int]]
perms [] = [[]]
perms m = [a:x | a <- m, x <- (perms $ filter (\x -> x/= a) m)]

--Code from Question B4

split :: [Int] -> [([Int],[Int])]
split [] = [([],[])]
split [x] = error "Not enough elements"
split m = do
    let l = length m
    split1 (l-1) m

split1 1 xs = do
    let l = length xs
    [ ( take (l-1) xs, drop (l-1) xs) ] 

split1 x xs = do
    let l = length xs
    [ (take (l-x) xs, drop (l-x) xs) ] ++ split1 (x-1) xs

--Code for B5

exprs :: [Int] -> [Expr]
exprs [] = []
exprs [n] =[Val n]
exprs m = do
    [ e | (ls, rs) <- split m  -- using split func from B4 to create every version of list splitting for the equations
            ,  l     <- exprs ls
            ,  r     <- exprs rs
            ,  e     <- combine l r]

instance Show Expr where --generating output
    show (App Add x y) = show x ++ "+" ++ show y
    show (App Mul x y) = show x ++ "*" ++ show y
    show (Val x)       = show x

combine :: Expr -> Expr -> [Expr]
combine l r = [App o l r | o <- [Mul, Add]]


--code for B6
solve :: [Int] -> Int -> [Expr]
solve xs x = do
   [e | ns <- perms xs
      , e <- exprs ns
      , eval e == x]
