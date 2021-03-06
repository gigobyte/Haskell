## Things to learn

The list has evolved into a collection of topics that are not limited only to Haskell, but to other functional languages and mathematics as well. It's also used as a list of articles/posts I want to read.

| Topic | Familiar with? | Resources |
|:-----:|:-----:| :-----:|
| ReaderT | :heavy_check_mark: | [1](http://haskellbook.com/), [2](https://blog.ssanj.net/posts/2014-09-23-A-Simple-Reader-Monad-Example.html) |
| StateT | :heavy_check_mark: | [1](http://haskellbook.com/), [2](https://egghead.io/courses/state-monad-in-javascript), [3](https://blog.bitsrc.io/stateful-monads-in-javascript-part-1-f772ac26195c) |
| Tagless Final | :heavy_check_mark: | [1](https://serokell.io/blog/2018/12/07/tagless-final) |
| Monad transformers | :heavy_check_mark: | [1](http://haskellbook.com/), [2](https://mmhaskell.com/blog/2017/3/6/making-sense-of-multiple-monads), [3](https://robots.thoughtbot.com/refactoring-to-a-monad-transformer-stack), [4](https://www.youtube.com/watch?v=NpwP01Z0pWQ), [5](https://www.youtube.com/watch?v=GZPup5Iuaqw) |
| ReaderT design pattern | :heavy_check_mark: | [1](https://www.fpcomplete.com/blog/2017/06/readert-design-pattern) |
| Data.Functor.Compose | :x: | [1](https://hackage.haskell.org/package/transformers-0.3.0.0/docs/Data-Functor-Compose.html), [2](https://medium.com/@fintan.halpenny/compose-tetris-196b70035aff) |
| Parser combinators | :heavy_check_mark: | [1](http://haskellbook.com/), [2](https://gist.github.com/yelouafi/556e5159e869952335e01f6b473c4ec1), [3](https://hackernoon.com/arcsecond-parsing-in-javascript-made-easy-af1894bdcec9) |
| Free | :x: | [1](http://www.parsonsmatt.org/2017/09/22/what_does_free_buy_us.html), [2](https://www.youtube.com/watch?v=rP_JoHKFNJo), [3](http://www.haskellforall.com/2012/06/you-could-have-invented-free-monads.html), [4](http://www.haskellforall.com/2012/07/purify-code-using-free-monads.html), [5](http://degoes.net/articles/modern-fp), [6](http://degoes.net/articles/modern-fp-part-2), [7](https://softwaremill.com/free-monads/) |
| Freer | :x: | |
| Comonad | :x: | |
| Coalgebra (F-Algebras) | :x: | [1](https://stackoverflow.com/a/16022059/4709004) |
| Recursion schemes | :x: | [1](https://github.com/passy/awesome-recursion-schemes), [2](https://blog.sumtypeofway.com/an-introduction-to-recursion-schemes/) |
| Functor family (Strong, Choice etc) | :x: | [1](http://lambdajam.yowconference.com.au/slides/yowlambdajam2017/Wilson-ExtendedFunctoFamily.pdf), [2](https://www.youtube.com/watch?v=IJ_bVVsQhvc) |
| Functional Dependencies | :x: | |
| Epi- and monomorphism | :x: | [1](https://www.johndcook.com/blog/2018/08/25/epi-and-mono/)
| GADTs | :x: | |
| Type families | :x: | |
| Algebraic effects | :x: | |
| Typeable/Typerep | :x: | [1](https://sras.me/haskell/what-the-heck-is-typeable.html) |
| Transducer | :x: | [1](https://medium.com/@MimiLiou77/intuitive-transducer-in-javascript-f358d3fe53d), [2](https://medium.com/javascript-scene/transducers-efficient-data-processing-pipelines-in-javascript-7985330fe73d), [3](https://jrsinclair.com/articles/2019/magical-mystical-js-transducers/) |
| DerivingVia | :x: | [1](https://www.tweag.io/posts/2018-10-04-capability.html)
| Trampolines | :x: | [1](https://adamschoenemann.dk/posts/2019-02-12-trampolines.html), [2](https://blog.logrocket.com/using-trampolines-to-manage-large-recursive-loops-in-javascript-d8c9db095ae3), [3](https://eli.thegreenplace.net/2017/on-recursion-continuations-and-trampolines/) |
| Profunctor Optics | :x: | [1](https://lens-by-example.chrispenner.ca/articles/traversals/writing-traversals), [2](https://lens-by-example.chrispenner.ca/articles/prisms/overview), [3](https://jappieklooster.nl/lens-into-wrapped-newtypes.html), [4](https://github.com/hablapps/DontFearTheProfunctorOptics), [5](https://medium.com/@gcanti/introduction-to-optics-lenses-and-prisms-3230e73bfcfe), [6](https://vrom911.github.io/blog/write-yourself-a-lens) |
| Classy Prisms | :x: | [1](https://www.parsonsmatt.org/2018/11/03/trouble_with_typed_errors.html) |
| Indexed Monads | :x: | |
| Codensity | :x: | |
| EffCategories | :x: | [1](https://coot.me/posts/categories-with-monadic-effects.html) |
| Yoneda | :x: | |
| What's the problem? | :x: | [1](https://www.reddit.com/r/math/comments/ap25mr/a_monad_is_a_monoid_in_the_category_of/)

## Quotes

"If everything is an expression, everything has a type" - [Clément Delafargue - TDD as in Type-Driven Development](https://www.youtube.com/watch?v=H8JXQPCvTw8&t=11m50s)

"It takes a lot of programming to get back from a little programming that deviates from mathematical logic." - Xavier Leroy

"The way I think about this is that as programming languages evolve things that used to be side effects become implementation details of the language.  One example of this is manual memory management which evolved into garbage collection" - [Gabriel Gonzalez](https://twitter.com/GabrielG439/status/1028418658287190017)

"When people say "but most business logic bugs aren't type errors" i just want to show them how to make bugs into type errors" - [Matt Parsons](https://twitter.com/mattoflambda/status/1008735243581288449)

"If your code feels complicated to write, it's more often than not that your types are not fit representation of your data" - [Michel Belleville](https://elmlang.slack.com/archives/C0CJ671HU/p1541581801316400)

"The design of the data structures is the central decision in the creation of a program. Once the data structures are laid out, the algorithms tend to fall into place, and the coding is comparatively easy." - [Brian W. Kernighan and Rob Pike  - "The Practice of Programming"](http://ptgmedia.pearsoncmg.com/images/9780201615869/samplepages/020161586X.pdf)

"Making illegal states unrepresentable is all about statically proving that all runtime values (without exception) correspond to valid objects in the business domain." - [John A De Goes](https://twitter.com/jdegoes/status/1089949149628375040)

"GOTO was evil because we asked, 'how did I get to this point of execution?' Mutability leaves us with, 'how did I get to this state?'" - [Jessica Kerr](https://twitter.com/jessitron/status/333228687208112128)
