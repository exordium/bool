module Example (example,module X) where
import Prelude (IO,print)
import Bool as X

example :: Bool -> IO ()
{-# INLINE example #-}
example a = print (bool 'a' 'b' (xor (eq true a) true))
