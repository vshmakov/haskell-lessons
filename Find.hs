find' :: (a -> Bool) -> [a] -> Maybe a
find' _ [] = Nothing
find' p (a : as)
  | p a = Just a
  | otherwise = find' p as