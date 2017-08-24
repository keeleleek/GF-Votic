# Project presentation GF Summer School 2017

## Background

How to start with GF when the only thing I have is full inflection tables for 5 nouns?

1. Use the inflection tables and [pextract](https://github.com/marfors/paradigmextract)
2. Make a [DFDL](http://dfdlschemas.github.io/) schema that describes the pextract output (see [dfdl-pextract-schema](https://github.com/keeleleek/dfdl-pextract-schema))
3. Make converter [pextract2gf](https://github.com/keeleleek/pextract2gf) that generates the GF code
4. Ask Inari for the rest of the code for a mini resource grammar
5. Use [pextract2gf](https://github.com/keeleleek/pextract2gf) and copy-paste into the mini grammar
6. Have dinner and go home for further work
7. ... resurrect Votic language by showing cool GF application grammars for the last 10 Votic people

_Draw general work-flow here_

_Show [generated code](https://github.com/keeleleek/pextract2gf/tree/master/examples) here_

## pextract2gf

### Good things

- [ ] lemma-agnostic (probably Sg Par is best but I need to check statistics)
- [ ] further lexicon building á la [Morfologilabbet](https://spraakbanken.gu.se/karp/morfologilabbet)

### Problems

- [ ] GF pattern matching is non-greedy (see [Issue #3](https://github.com/keeleleek/GF-Votic/issues/3))

### To-do

- [ ] Make pextract2gf code readable and understandable
- [ ] Add verbs and find problems
- [ ] The type system is semi fixed
- [ ] Variants are effectively ignored (but included in the serialization)
- [ ] serialize a Smart Paradigm from pextract paradigm description
- [ ] make the Smart Paradigm smarter
- [ ] but on the more abstract level using [Lexical Markup Framework](http://www.lexicalmarkupframework.org/)
- [ ] ... make a Finnic functor and move on to Votic syntax
