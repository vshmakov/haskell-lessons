groupElems :: Eq a => [a] -> [[a]]
groupElems [] = []
groupElems as@(a : _) = equalsToA : groupElems others
  where (equalsToA, others) = span (a==) as