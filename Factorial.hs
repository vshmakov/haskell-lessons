factorial :: [Integer]
factorial = 1 : zipWith (*) [1..] factorial