Lispdown: Its like Markdown, except for lisp :)
===============================================
Lispdown is a markdown-like representation for **displaying** lisp.

Why
----
Lispdown began as [an idea as I was reading SICP](http://tt2n.blogspot.com/search/label/lispdown). I thought it might be nice to unravel some of the ()-forests using syntax stolen from Ruby and Javascript. Unlike other (more intense) efforts to create a ()-less lisp, however, Lispdown is intended as a way to display lisp, not change it materially in any way. Thus any conversion rules that might change the basic tenets of lisp syntax are avoided. Also for the same reason, the `lispdown -> lisp` is a valid transformation, but `lisp -> lispdown` is not.

The other reason for less complicated rules is to have a simple conversion tool. The current implementation is a shell script using sed.

Rules
-----
1. Lispdown : Lisp :: Markdown : HTML. That is, valid lisp is valid lispdown.If you cannot use lispdown syntax, just use lisp's.
2. Known forms are like begin-parens; add an "end" to finish them. Thanks Ruby!
  1. the `else` clause is a known form for lispdown purposes; ie, will require an end.
3. Use []'s in place of ()' to denote lists.
4. Use {}'s in place of ()' to denote hashes/maps.
5. Use :'s to separate name-value pairs.
6. Use ,'s to separate list items

Rule #1 ensures that the other rules are primarily syntactic sugar and doesn't affect the lisp-ness of the code.

Implementation
--------------
The current implementation is very much a WIP and the rules are being tweaked as I go. It's currently a simple shell script that uses sed to convert from lispdown to lisp.

Some basic samples are in the `test` directory. I'll add more as I go along.

Observations
------------
* I see the merit of having a syntax-less syntax. Virtually any construct or syntactic layout can be achieved. I have had to tighten the rules to make lispdown work within the constraints I've set for myself.
* By making the syntax positional, lisp ensures that any value can be an expression - something that languages with more syntax have to invent syntax to represent.
* I **could** most probably write the lispdown converter in lisp, but i'm not that good. The circularity of the concept is interesting tho!