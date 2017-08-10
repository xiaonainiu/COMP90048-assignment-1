--question 1
eq a b xs = [if x == a then b else x | x <- xs]