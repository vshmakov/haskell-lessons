groupElems :: Eq a => [a] -> [[a]]
groupElems [] = []
groupElems (a : as) = (takeWhile ea as ++ [a]) : groupElems (dropWhile ea as)
  where ea = (a==)