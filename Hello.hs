f :: Integer -> Integer -> Integer -> Integer
f n a p
  | n == 0 = a
  | n < 0 = f (n + 1) p (a - p)
  | otherwise = f (n - 1) (a + p) a

fibonacci :: Integer -> Integer
fibonacci n = f n 0 1
