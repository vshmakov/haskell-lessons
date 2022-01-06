class (Bounded a, Enum a, Eq a) => SafeEnum a where
  ssucc :: a -> a
  ssucc a
    | a == maxBound = minBound
    | otherwise = succ a

  spred :: a -> a
  spred a
    | a == minBound = maxBound
    | otherwise = pred a

instance SafeEnum Bool