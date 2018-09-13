module Inst.Bool (module Inst.Bool, module X) where
import Sig.Bool as X

not :: Bool -> Bool
not = bool true false

and :: Bool -> Bool -> Bool
and a b = bool a b a

or :: Bool -> Bool -> Bool
or a b = bool b a a
