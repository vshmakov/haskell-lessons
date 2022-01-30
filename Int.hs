integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = h / 2 * (f a + f b + sum [f (a + h * x) * 2 | x <- [1..s - 1]])
  where
    s = 1000
    h = (b - a) / s
