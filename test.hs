data Expr = Val Int | App Op Expr Expr
data Op = Add | Mul

eval :: Expr -> Int
eval (Val x) = x
eval (App x (Val x1) (Val x2)) = x1 + x2 
