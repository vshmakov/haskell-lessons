groupElems :: Eq a => [a] -> [[a]]
groupElems as = map (uncurry replicate) (countElems as)
  where
    countElems (a : as) (b : bs)
      | snd b == a = (a, snd b + 1) : bs