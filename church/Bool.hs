{-# language ViewPatterns,PatternSynonyms #-}
module Bool (Bool(Bool,True,False),bool,true,false,not,and,or) where

newtype Bool = Bool (forall a. a -> a -> a)


pattern True :: Bool
pattern True <- (bool F T -> T) where True = true
pattern False :: Bool
pattern False <- (bool F T -> F) where False = false
{-# complete True,False #-}

bool :: r -> r -> Bool -> r
bool a b (Bool k) = k a b

true, false :: Bool
true = Bool \_ b -> b; false = Bool \a _ -> a

not :: Bool -> Bool
not = bool true false

and :: Bool -> Bool -> Bool
and a b = bool a b a

or :: Bool -> Bool -> Bool
or a b = bool b a a


-- | Internal type for pattern matching
data B = T | F
