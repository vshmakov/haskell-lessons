qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort as@(a : _) = qsort (filterWith (<)) ++ filterWith (==) ++ qsort (filterWith (>))
  where filterWith compare = filter ((flip compare) a) as