--Part b question 1. 
--Creates two data type and 2 function
--function 1 will evaluate simple 2 term expression and 
--function 2 will list the terms in the expression
--

data Expr = Val Int | App Op Expr Expr
data Op = Add | Mul

eval :: Expr -> Int
eval (Val x) = x
eval (App x (Val x1) (Val x2)) = x1 + x2  
