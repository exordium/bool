module Example where
import Prelude (print)
import Sig.Bool

example = print (bool 'a' 'b' (or (and true true) false))
