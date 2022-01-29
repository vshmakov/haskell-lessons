fibStream :: [Integer]
fibStream = 0 : 1 : zipWith (+) fibStream (drop 1 fibStream)
