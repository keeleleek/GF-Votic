# Project presentation GF Summer School 2017

__How to boot-strap GF development for non-resourced languages__
alternative title
__Boot-strap GF morphology and start directly on concrete syntax__
_Kristian Kankainen_
[MTÜ Keeleleek](http://vadda.keeleleek.ee/)


## Project background

Q: How to start with GF when the only thing I have is full inflection tables for 5 nouns?

A: Automatically generate all GF code by showing the tables to the machine!

So my project was to make the converter from inflection tables into GF code.


## General work-flow:

Illustration of my general work-flow:

```
      LMF
  (extensional
   morphology)
       |
   inflection
     table --> pextract --> paradigm
                          description
                               |
                              DFDL
                               |
                              XML ---> GF
                               |
                              LMF
                         (intensional
                          morphology)
```

Practical implementation of the above work-flow:
1. Take my inflection tables and extract the paradigms using the paradigm extraction tool [pextract](https://github.com/marfors/paradigmextract)
1. Make a [DFDL](http://dfdlschemas.github.io/) schema that describes the output of pextract (see [dfdl-pextract-schema](https://github.com/keeleleek/dfdl-pextract-schema))
1. Make a converter that generates the GF code from the pextract output (see [pextract2gf](https://github.com/keeleleek/pextract2gf))
1. Make sure the converted code runs
1. Ask Inari for the rest of the code for a mini resource grammar
1. Use [pextract2gf](https://github.com/keeleleek/pextract2gf) and copy-paste the generated code into my mini grammar
1. Have dinner and go home for further work
1. ... resurrect Votic language by showing cool GF application grammars for the grandchildren of the last 10 Votic people



_Show [automatically generated GF code](https://github.com/keeleleek/pextract2gf/tree/master/examples) here_


## pextract2gf

### Good things

- lemma-agnostic (probably `Sg Par` is best but I need to check statistics)
- further lexicon building á la [Morfologilabbet](https://spraakbanken.gu.se/karp/morfologilabbet)
- new GF users could boot-strap the morphology module and move directly to concrete syntax of a language

### Problems

- [ ] GF pattern matching is unexpectedly _non-greedy_ (see [Issue #3](https://github.com/keeleleek/GF-Votic/issues/3))

### To-do

- [ ] Make pextract2gf code readable and understandable
- [ ] Add link and short explanation in GF-contrib repository
- [ ] Variant forms are now effectively ignored (but still included in the serialization)
- [ ] Use function for switching between bind and string concatenation
- [ ] Add verbs and find more problems
  - [ ] ... mostly in the type system which seems semi fixed
- Work on paradigm prediction
  - [ ] serialize a Smart Paradigm from pextract paradigm description
  - [ ] make the Smart Paradigm smarter
    - [ ] but on the more abstract level using [Lexical Markup Framework](http://www.lexicalmarkupframework.org/)
- [ ] work on paradigm minimization (to minimize GF memory)
- [ ] ... move on to Votic syntax
