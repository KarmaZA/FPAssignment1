--Not working for some inputs reworking into 3
--conditional
safetail_conditional :: [a] -> [a]
safetail_conditional x =
    if null x
          then []
          else tail x

 --guarded
 --safetail_guard


 --pattern matching
--safetail_pattern



--safetail [x] | (null [x]) = []
--             | otherwise = [x]
--safetail (_:xs) = (xs) 
