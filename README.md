
[![Project Status: Concept – Minimal or no implementation has been done
yet, or the repository is only intended to be a limited example, demo,
or
proof-of-concept.](https://img.shields.io/badge/repo%20status-concept-orange.svg)](http://www.repostatus.org/#concept)
[![Travis-CI Build
Status](https://travis-ci.org/ropenscilabs/datasauce.svg?branch=master)](https://travis-ci.org/ropenscilabs/datasauce)

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

## Example

Concept design stage still.

Get data.frames with definitions of permitted properties in a
<https://schema.org/Dataset> and all subclasses used within `Dataset`:

``` r
ds <- datasauce:::get_schemas("Dataset")
ds$Dataset
#> # A tibble: 136 x 4
#>    class        property        type         description                  
#>    <chr>        <chr>           <chr>        <chr>                        
#>  1 CreativeWork workExample     CreativeWork Example/instance/realization…
#>  2 CreativeWork video           VideoObject  An embedded video object.    
#>  3 CreativeWork version         Text         The version of the CreativeW…
#>  4 CreativeWork version         Number       The version of the CreativeW…
#>  5 CreativeWork typicalAgeRange Text         The typical expected age ran…
#>  6 CreativeWork translator      Person       Organization or person who a…
#>  7 CreativeWork translator      Organization Organization or person who a…
#>  8 CreativeWork timeRequired    Duration     Approximate or typical time …
#>  9 CreativeWork thumbnailUrl    URL          A thumbnail image relevant t…
#> 10 CreativeWork text            Text         The textual content of this …
#> # ... with 126 more rows
```

Get a simple templating function for creating any schema.org type:

``` r
dataset <- datasauce:::template_constructor("Dataset")
# hit tab to see all possible fields
ds <- dataset(name = "My dataset")
```

(currently does not indicate the type of object expected in each field…)

Get all possible classes and properties in schema.org

``` r
datasauce:::get_classes()
#> # A tibble: 752 x 6
#>    class          inherits    inherits.2  inherits.3 inherits.4 inherits.5
#>    <chr>          <chr>       <chr>       <chr>      <chr>      <chr>     
#>  1 Zoo            CivicStruc… Place       Thing      <NA>       <NA>      
#>  2 WriteAction    CreateActi… Action      Thing      <NA>       <NA>      
#>  3 Winery         FoodEstabl… LocalBusin… Place      Thing      <NA>      
#>  4 Winery         FoodEstabl… LocalBusin… Organizat… Thing      <NA>      
#>  5 WinAction      AchieveAct… Action      Thing      <NA>       <NA>      
#>  6 WholesaleStore Store       LocalBusin… Place      Thing      <NA>      
#>  7 WholesaleStore Store       LocalBusin… Organizat… Thing      <NA>      
#>  8 WebSite        CreativeWo… Thing       <NA>       <NA>       <NA>      
#>  9 WebPageElement CreativeWo… Thing       <NA>       <NA>       <NA>      
#> 10 WebPage        CreativeWo… Thing       <NA>       <NA>       <NA>      
#> # ... with 742 more rows
datasauce:::get_properties()
#> # A tibble: 1,764 x 4
#>    class            property         type              description        
#>    <chr>            <chr>            <chr>             <chr>              
#>  1 HowTo            yield            Text              The quantity that …
#>  2 HowTo            yield            QuantitativeValue The quantity that …
#>  3 BusinessAudience yearsInOperation QuantitativeValue The age of the bus…
#>  4 BusinessAudience yearlyRevenue    QuantitativeValue The size of the bu…
#>  5 Rating           worstRating      Text              The lowest value a…
#>  6 Rating           worstRating      Number            The lowest value a…
#>  7 Person           worksFor         Organization      Organizations that…
#>  8 ScreeningEvent   workPresented    Movie             The movie presente…
#>  9 Event            workPerformed    CreativeWork      A work performed i…
#> 10 Person           workLocation     Place             A contact location…
#> # ... with 1,754 more rows
```
