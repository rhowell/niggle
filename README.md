# The Niggle Programming Language
Niggle is a general purpose programming language (don't all languages say that now adays?).
It is inspired most strongly by Clojure and Haskell.  

## Philosophy
Niggle strives to be a purely functional, strongly typed lisp.  It can be interpreted or compiled via LLVM.  With powerful type inference and familiar s-expression syntax, it hopes to be a powerful yet approachable programming language.

## Current Status
Nothing really... I'm still working on what I would like the syntax to look like, and am iterating on the lexer/parser for this language.

## Example Code

Hello World:

```
>(def hi! (fn [name] (print "Hello " name)))
# defined 'hi!' string -> string
```

Invalid Call:

```
> (hi! 7)
# Invalid call: hi! Expects string, not int
```

Valid call:

```
> (hi! (int 7))
# "Hello 7"
```

Specific type defined:

```
> (def spec (fn [int:x float:y,z] (+ (float x) y z)))
# defined 'spec' int, float, float -> float
```

## The name

> There was one picture in particular which bothered him. It had begun with a leaf caught in
> the wind, and it became a tree; and the tree grew, sending out innumerable branches, and
> thrusting out the most fantastic roots. Strange birds came and settled on the twigs and had
> to be attended to. Then all round the Tree, and behind it, through the gaps in the leaves
> and boughs, a country began to open out; and there were glimpses of a forest marching over
> the land, and of mountains tipped with snow. Niggle lost interest in his other pictures; or
> else he took them and tacked them on to the edges of his great picture. Soon the canvas
> became so large that he had to get a ladder; and he ran up and down it, putting in a touch
> here, and rubbing out a patch there. When people came to call, he seemed polite enough,
> though he fiddled a little with the pencils on his desk. He listened to what they said, but
> underneath he was thinking all the time about his big canvas
>
> Leaf By Niggle - J.R.R. Tolkein

