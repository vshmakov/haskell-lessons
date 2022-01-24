import Data.List

shifts (a : as) = map (\i -> take i as ++ [a] ++ drop i as) [0..length as]

perms :: [a] -> [[a]]
perms [] = []
perms [a] = [[a]]
perms (a : as) = sortBy (\x -> \y -> compare $ sum x sum y) $ concatMap (\xs -> shifts ([a] ++ xs)) (perms as)