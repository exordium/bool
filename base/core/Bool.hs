{-# language MagicHash #-}
module Bool (Bool(..),true,false,bool,isTrue#) where
import GHC.Types

true, false :: Bool
true = True; false = False

bool :: r -- ^ False
     -> r -- ^ True
     -> Bool -> r
bool f _ False = f
bool _ t True = t
