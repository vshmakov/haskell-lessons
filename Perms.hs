perms :: [a] -> [[a]]
perms [] = [[]]
perms (a : as) = [take i xs ++ [a] ++ drop i xs | xs <- perms as,  i <- [0..length xs]]