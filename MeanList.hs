meanList :: [Double] -> Double
meanList = uncurry (/) . foldr (\x (s, l) -> (s + x, l + 1)) (0, 0)
