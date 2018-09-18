# euler :fountain:

[![twitter](https://img.shields.io/badge/-%40SolutionsEuler-%2300aced.svg)](https://twitter.com/SolutionsEuler)

euler solutions

###### Problems friendly provided by [Project Euler](https://projecteuler.net)

## About

This project is a challenge for myself, where I will try to solve all 636 Euler Problems
presented by [Project Euler](https://projecteuler.net) in 365. The fun during this, will
be the implementation in 10 different programming languages for each problem.

Each problem will be described in a pdf that you can generate with `$ make [Number].note`,
that contains optimization ideas and basic concepts of how the solution works. The solution
on its own however won't be provided.

If a new problem has been solved in a language, a new tweet will arrive at [@SolutionsEuler](https://twitter.com/SolutionsEuler).

## Compiling

As this project requires the use of 10 programming languages, docker containers will be
presented in order to execute the programs. This will allow anyone to execute the code
on any machine without issues.

Use Programming Languages:
- Java _(`openjdk-8`)_
- Ruby
- C
- Python
- Go
- Swift
- PHP
- Erlang
- Perl
- Clojure
- x86 Assembly
- Haskell

###### Versions of each language will be added

#### Commands

```shell
# Generate a pdf of all problem notes
$ make notes
# Generate a single problem note
# NOTE: 1 can be any number
$ make 1.notes

# Run a problem in a specific language
# NOTE: 1 can be any number
# NOTE: java can be any programming language listed above
$ make 1.java
```

##### Requirements

###### This project is targeting linux machines

- `pdflatex` _(I suggest `texlive-full`)_
- `docker`
- optional: `linux` _(just any linux machine to use the `Makefile`)_

## License

###### I'm not a fan of licenses, so MIT is my best friend to go here

_Just do what you'd like to_

[![license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/oltdaniel/euler/blob/master/LICENSE)

*Problems are friendly presented by [Project Euler](https://projecteuler.net/copyright).*

#### Credit

[Daniel Oltmanns](https://github.com/oltdaniel) - creator
