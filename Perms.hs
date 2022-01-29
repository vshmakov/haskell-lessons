qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort as@(a : _) = qsort (filterWith (<)) ++ filterWith (==) ++ qsort (filterWith (>))
  where filterWith compare = filter ((flip compare) a) as

shifts (a : as) = map (\i -> take i as ++ [a] ++ drop i as) [0..length as]

s :: [Int] -> Int
s a = read (concat (map show a))

sort a = qsort (map s a)

readInt :: Char -> Int
readInt a = read [a]

toArrays :: [Int] -> [[Int]]
toArrays = map (\a -> map readInt (show a))

perms [] = []
perms [a] = [[a]]
perms (a : as) = concatMap (\xs -> shifts ([a] ++ xs)) (perms as)