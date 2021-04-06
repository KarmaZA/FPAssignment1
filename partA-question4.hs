--Need to add a function type that uses null to make sure that question 4 is fully answered
safetail :: [a] -> [a]
safetail [] = []
safetail [x] | (null [x]) = []
             | otherwise = [x]
safetail (_:xs) = (xs) 
