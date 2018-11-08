module Bool where

newtype Bool = Bool (forall a. a -> a -> a)

bool :: r -- ^ False
     -> r -- ^ True
     -> Bool -> r
bool a b (Bool k) = k a b

true, false :: Bool
true = Bool \_ b -> b; false = Bool \a _ -> a
