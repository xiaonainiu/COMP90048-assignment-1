-- import Data.ByteString.UTF8 (fromString)
--question 1
subst a b xs = [if x == a then b else x | x <- xs]

subst :: Eq t => t -> t -> [t] -> [t]
subst a b [] = []
subst a b (x:xs) = 
	if x == a 
		then [b] ++ subst a b xs 
		else [x] ++ subst a b xs

--question 2

interleave :: [t] -> [t] -> [t]
interleave [] [] = []
interleave List1 List2 = 
	[head List1, head List2] 
	++ interleave tail List1 tail List2
