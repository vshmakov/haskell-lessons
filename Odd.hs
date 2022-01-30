data Odd = Odd Integer deriving (Eq,Show)

instance Enum Odd where
    succ (Odd a) = Odd (a + 2)
    pred (Odd a) = Odd (a - 2)