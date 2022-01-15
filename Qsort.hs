qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (a : as) = qsort (filterWith (>)) ++ [a] ++ filterWith (==) ++ qsort (filterWith (<))
  where filterWith compare = filter (compare a) as