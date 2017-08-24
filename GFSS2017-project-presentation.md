# Project presentation GF Summer School 2017

## Background

Q: How to start with GF when the only thing I have is full inflection tables for 5 nouns?

A: Automatically generate all GF code by showing the tables to the machine!


General work-flow:

```
    LMF
     |
   infl.
   table --> pextract --> pfile
                            |
                           DFDL
                            |
                           XML --> GF
                            |       |
                           LMF -----|
```

Practical implementation of the above work-flow:
1. Use the inflection tables and the paradigm extraction tool [pextract](https://github.com/marfors/paradigmextract)
1. Make a [DFDL](http://dfdlschemas.github.io/) schema that describes the pextract output (see [dfdl-pextract-schema](https://github.com/keeleleek/dfdl-pextract-schema))
1. Make a converter that generates the GF code from the pextract output (see [pextract2gf](https://github.com/keeleleek/pextract2gf))
1. Ask Inari for the rest of the code for a mini resource grammar
1. Use [pextract2gf](https://github.com/keeleleek/pextract2gf) and copy-paste the generated code into your mini grammar
1.1. Feel good that you have gone from inflection table to runnable GF code for the morphology
1. Have dinner and go home for further work
1. ... resurrect Votic language by showing cool GF application grammars for the grandchildren of the last 10 Votic people



_Show [generated code](https://github.com/keeleleek/pextract2gf/tree/master/examples) here_

## pextract2gf

### Good things

- [ ] lemma-agnostic (probably `Sg Par` is best but I need to check statistics)
- [ ] further lexicon building á la [Morfologilabbet](https://spraakbanken.gu.se/karp/morfologilabbet)

### Problems

- [ ] GF pattern matching is non-greedy (see [Issue #3](https://github.com/keeleleek/GF-Votic/issues/3))

### To-do

- [ ] Make pextract2gf code readable and understandable
- [ ] Add link and short explanation in GF-contrib repository
- [ ] Use function for switching between bind and string concatenation
- [ ] Add verbs and find problems
  - [ ] ... mostly in the type system which seems semi fixed
- [ ] Variants are effectively ignored (but included in the serialization)
- Work on paradigm prediction
  - [ ] serialize a Smart Paradigm from pextract paradigm description
  - [ ] make the Smart Paradigm smarter
    - [ ] but on the more abstract level using [Lexical Markup Framework](http://www.lexicalmarkupframework.org/)
- [ ] work on paradigm minimization (to minimize GF memory)
- [ ] ... move on to Votic syntax
