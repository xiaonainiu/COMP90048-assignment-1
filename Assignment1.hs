-- import Data.ByteString.UTF8 (fromString)
--question 1
--subst a b xs = [if x == a then b else x | x <- xs]

--subst :: Eq t => t -> t -> [t] -> [t]
--subst a b [] = []
--subst a b (x:xs) = 
--	if x == a 
--		then [b] ++ subst a b xs 
--		else [x] ++ subst a b xs

--question 2

--interleave :: [t] -> [t] -> [t]
--interleave [] [] = []
--interleave (xs) (ys) = 
--	if((head xs) /= null && (head ys) /= null) 
--		then [head x, head y] ++ (interleave (tail xs) (tail ys)
--	else if((head xs) == null)
--		then ys
--	else if ((head ys) == null)
--		then xs

--question 3

unroll :: Int -> [a] -> [a]
unroll a [] = []
unroll a xs = take a (cycle xs)