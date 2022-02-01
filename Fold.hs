fold :: b -> (a -> b -> b) -> [a] -> b
fold init _ [] = init
fold init f (a : as) = a `f` fold init f as