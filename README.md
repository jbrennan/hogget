Hogget. A functional standard library for Swift.

## Motivation

Finally with Swift, Cocoa developers have access to a language with parametric polymorphism, ADTs, and tuples.

Hogget implements many functions from the Haskell standard library, among others. Our aim is to implement every combinator known to man.

## Contributing

There are a few rules:

1. Hogget is split into *libraries*, such as the Array library. Each function occupies its own *file*, which contains: a) implementation, b) documentation, c) testing, d) benchmarking. The functions in each library are assembled into one swift file by `gen.py` which is run on a pre-commit hook.

2. Hogget is mainly concerned with pure functions, and data structures. UI is considered to be out of scope, and as such, there must be no dependency on UIKit or AppKit.

3. Functions in Hogget take arguments in SVO order. e.g. map() is map(List, Function), not map(Function, List). This ordering is required by Swift for call-lambda syntax to work. Additionally, we always use "haystack, needle".

4. As a rule, when there are "left" and "right" variants of a function, the `l` or `r` is written first. e.g., `rpartition`, `rpad`, `rfold`, `rtrim`. The `l` prefix is only used for functions like `pad` where you have *three* variants: `lpad`, `pad`, and `rpad` (left, both, and right padding respectively).

5. It pains me to say it, but use American spelling throughout. e.g. center, program, color, math; not centre, programme, colour, maths.

6. String functions are to work on grapheme clusters. Not bytes, not UTF-16, not code points.

Consistency is considered to be more important than tradition.

## License

MIT.
