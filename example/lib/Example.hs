module Example (example,module X) where
import Prelude (IO,print)
import Sig.Bool as X

example :: Bool -> IO ()
example a = print (bool 'a' 'b' (or (and true a) false))
