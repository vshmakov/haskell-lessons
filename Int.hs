acc i f a h r
  | i == 0 = r
  | otherwise = acc (i - 1) f a h (r + f (a + h * i))

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b =
  let
    s = 1000
    h = (b -a) / s
  in h / 2 * (f a + f b + acc (s - 1) f a h 0 * 2)
