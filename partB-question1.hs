--Part b question 1. 
--Creates two data type and 2 function
--function 1 will evaluate simple 2 term expression and 
--function 2 will list the terms in the expression
--

data Expr = Val Int | App Op Expr Expr
data Op = Add | Mul

eval :: Expr -> Int
eval (Val x) = x
eval (App Add x1 x2) = sum (values x1 ++ values x2)
eval (App Mul x1 x2) = product(values x1 ++ values x2) 

values :: Expr -> [Int]
--elements [] = []
-- Needed to update this because of B6

values (Val x) = [x]
values (App Add x y) = values x ++ values y
values (App Mul x y) = values x ++ values y
