perms :: [a] -> [[a]]
perms []     = [[]]
perms (x:xs) = [y | p <- perms xs, y <- interleave p]
  where
    interleave []     = [[x]]
    interleave (y:ys) = (x:y:ys) : map (y:) (interleave ys)