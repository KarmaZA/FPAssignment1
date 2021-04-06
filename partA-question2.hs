-- last function using other library functions. Can't change a single element list or error message for empty list. But the implementation for the list reverses the tail of list and selects the head. It doesn't matter if its the tail or the whole list just ended up this way as a quirk of the development
last :: [a] -> a
last [x] = x
last (_:xs) = head (reverse xs)
last [] = error "Can't do empty list"
