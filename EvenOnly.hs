evenOnly :: [a] -> [a]
evenOnly [] = []
evenOnly [_] = []
evenOnly (_ : x : xs) = x : evenOnly xs
