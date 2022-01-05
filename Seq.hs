helper k p1 p2 p3
  | k == 0 = p3
  | k == 1 = p2
  | k == 2 = p1
  | otherwise = helper (k - 1) (p1 + p2 - 2 * p3) p1 p2

seqA :: Integer -> Integer
seqA n = helper n 3 2 1
