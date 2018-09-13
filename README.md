# bool
A collection of packages for boolean types

Library packages can depend on the backpack signature in [`bool-sig`](https://github.com/exordium/bool/tree/master/sig)
to avoid choosing a `Bool` implementation.

This signature can be instantiated by a concrete implementation like [`bool-base`](https://github.com/exordium/bool/tree/master/base) or [`bool-church`](https://github.com/exordium/bool/tree/master/church).

[`bool-utils`](https://github.com/exordium/bool/tree/master/utils) can be used to reduce the burden in implementing a new `Bool` instantiation, extending a minimal signature instantiation to the full signature from `bool-sig`.
See the internals of `bool-base` and `bool-church` for examples of its usage.

Examples of usage in client code can be found in [`bool-example`](https://github.com/exordium/bool/tree/master/example)

The full generality available here is overkill on its own, and is provided mainly for consistency and as a minimal example.
It would be much more useful if backpack interacted nicely with levity-polymorphism. See [Unlifted bools](https://github.com/exordium/bool/issues/1)
