
[![Project Status: Concept – Minimal or no implementation has been done
yet, or the repository is only intended to be a limited example, demo,
or
proof-of-concept.](https://img.shields.io/badge/repo%20status-concept-orange.svg)](http://www.repostatus.org/#concept)
[![Travis-CI Build
Status](https://travis-ci.org/ropenscilabs/datasauce.svg?branch=master)](https://travis-ci.org/ropenscilabs/datasauce)
[![Coverage
status](https://codecov.io/gh/ropenscilabs/datasauce/branch/master/graph/badge.svg)](https://codecov.io/github/ropenscilabs/datasauce?branch=master)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/ropenscilabs/datasauce?branch=master&svg=true)](https://ci.appveyor.com/project/ropenscilabs/datasauce)
[![CRAN
status](https://www.r-pkg.org/badges/version/datasauce)](https://cran.r-project.org/package=datasauce)

<!-- README.md is generated from README.Rmd. Please edit that file -->

# datasauce

The goal of datasauce is to facilitate creation and manipulation of
metadata which uses Google’s [Structured
Data](https://developers.google.com/search/docs/guides/intro-structured-data)
format; essentially [JSON-LD](https://json-ld.org) formatted files which
use <https://schema.org/Dataset>. Users can check their document
interactively using the [Structured Data Testing
Tool](https://search.google.com/structured-data/testing-tool). ***See
[Google’s Dataset
Documentation](https://developers.google.com/search/docs/data-types/dataset)
for more on [this
approach](https://ai.googleblog.com/2017/01/facilitating-discovery-of-public.html).***

The [rOpenSci Project](https://ropensci.org) may use `datasauce` to
create and manage metadata about all of the open data sources that can
be accessed with rOpenSci packages. This could facilitate discovery of
relevant data.

## Installation

You can install `datasauce` from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("ropenscilabs/datasauce")
```

## Getting Started

Concept design stage still. Use `?` functions and tab completion to see
slots of available objects.

``` r
library(datasauce)
#> 
#> Attaching package: 'datasauce'
#> The following object is masked from 'package:base':
#> 
#>     Map
me <- Person(givenName = "Carl", familyName = "Boettiger", email = "cboettig@ropensci.org")
as_jsonld(me)
#> {
#>   "@context": "http://schema.org",
#>   "type": "Person",
#>   "givenName": "Carl",
#>   "familyName": "Boettiger",
#>   "email": "cboettig@ropensci.org"
#> }
```

The main purpose of the package is to take advantage of tab completion
and built-in documentation. For instance, typing `datasauce::P` and
hitting tab, we see a list of all possible object types (classes)
starting with `P`. Typing a full class, such as `datasauce::Place(` and
hitting tab, we see a list of possible properties for `Place`. The
manual entry, `?Place`, shows the definitions for each of these
properties, along with there expected types.

-----

Please note that this project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree
to abide by its terms.
