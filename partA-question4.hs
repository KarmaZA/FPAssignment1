-- A4 using 3 different functions for each of the requirements
--conditional
safetail_conditional :: [a] -> [a]
safetail_conditional x =
    if null x
          then []
          else tail x

 --guarded
safetail_guard :: [a] -> [a]
safetail_guard x
         | null x = []
         | otherwise = tail x


 --pattern matching
--safetail_pattern
safetail_pattern :: [a] -> [a]
safetail_pattern [] = []
safetail_pattern (_:xs) = xs 
