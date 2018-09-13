module Utils where
import Sig.Bool

not :: Bool -> Bool
not = bool true false

and :: Bool -> Bool -> Bool
and a b = bool a b a

or :: Bool -> Bool -> Bool
or a b = bool b a a
