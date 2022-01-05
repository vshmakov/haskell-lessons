sumNumbers x r
  | x == 0 = r
  | otherwise = sumNumbers (div x 10) (r + mod x 10)

countNotNullNumbers x r
  | x == 0 = r
  | otherwise = countNotNullNumbers (div x 10) (r + 1)

countNumbers x
  | x == 0 = 1
  | otherwise = countNotNullNumbers x 0


sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x =
  let a = abs x
  in (sumNumbers a 0, countNumbers a)
