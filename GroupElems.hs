groupElems :: Eq a => [a] -> [[a]]
groupElems as = map (\x -> fst (span (== x) as)) as