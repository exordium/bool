module Utils where
import Sig.Bool

pattern True :: Bool
pattern True <- (bool F T -> T) where True = true
pattern False :: Bool
pattern False <- (bool F T -> F) where False = false
{-# complete True,False #-}

not :: Bool -> Bool
not = bool true false

and :: Bool -> Bool -> Bool
and a b = bool a b a

or :: Bool -> Bool -> Bool
or a b = bool b a a

-- | Internal type for pattern matching
data B = T | F
