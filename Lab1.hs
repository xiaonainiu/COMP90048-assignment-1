--by Shen YI 844373
--18/03/2017

--module declaration
module Lab1 (subst, interleave, unroll) where

--question 1
--subst a b xs = [if x == a then b else x | x <- xs]

subst :: Eq t => t -> t -> [t] -> [t]
subst a b [] = []
subst a b (x:xs) = 
	if x == a 
		then [b] ++ subst a b xs 
		else [x] ++ subst a b xs

--question 2

interleave :: [t] -> [t] -> [t]
interleave [] [] = []
interleave xs [] = xs
interleave [] ys = ys
interleave (x:xs) (y:ys) = [x] ++ [y] ++ interleave (xs) (ys)

--question 3

unroll :: Int -> [a] -> [a]
unroll a [] = []
unroll a xs = take a (cycle xs)