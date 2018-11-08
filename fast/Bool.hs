{-# language MagicHash #-}
module Bool where
import GHC.Prim

data Bool = Bool# Word#

bool :: r -- ^ False
     -> r -- ^ True
     -> Bool -> r
bool a b (Bool# i) = case i of {0## -> a; _ -> b}

true, false :: Bool
true = True; false = False

pattern True :: Bool; pattern False :: Bool
pattern False = Bool# 0##; pattern True = Bool# 1##

not :: Bool -> Bool
{-# INLINE not #-}
not = eq False

or, xor, and, eq, ne :: Bool -> Bool -> Bool
Bool# a `or`  Bool# b = Bool# (or# a b); {-# INLINE[2] or #-}
Bool# a `xor` Bool# b = Bool# (xor# a b); {-# INLINE[2] xor #-}
Bool# a `and` Bool# b = Bool# (and# a b); {-# INLINE[2] and #-}
Bool# a `eq`  Bool# b = Bool# (int2Word# (eqWord# a b)); {-# INLINE[2] eq #-}
Bool# a `ne`  Bool# b = Bool# (int2Word# (neWord# a b)); {-# INLINE[2] ne #-}
