groupElems :: Eq a => [a] -> [[a]]
groupElems = groupTo []
  where
    groupTo as [] = as
    groupTo as (b : bs) = b : groupTo as bs




