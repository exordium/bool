module Utils where
import Bool

pattern True :: Bool
pattern True <- (bool F T -> T) where True = true
pattern False :: Bool
pattern False <- (bool F T -> F) where False = false
{-# complete True,False #-}

not :: Bool -> Bool
not = bool true false

and, or, eq, ne :: Bool -> Bool -> Bool
and a b = bool a b a
or a b = bool b a a
xor a b = bool b (not b) a
eq a b = bool (not b) b a
ne a b = not (eq a b)


-- | Internal type for pattern matching
data B = T | F
