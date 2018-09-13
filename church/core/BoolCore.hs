module BoolCore where

newtype Bool = Bool (forall a. a -> a -> a)

pattern True :: Bool
pattern True <- (bool F T -> T) where True = true
pattern False :: Bool
pattern False <- (bool F T -> F) where False = false
{-# complete True,False #-}

bool :: r -- ^ False
     -> r -- ^ True
     -> Bool -> r
bool a b (Bool k) = k a b

true, false :: Bool
true = Bool \_ b -> b; false = Bool \a _ -> a

-- | Internal type for pattern matching
data B = T | F
