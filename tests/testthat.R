library(testthat)
library(datasauce)
library(devtools)
devtools::install_github("ropenscilabs/jsonvalidate")
library(jsonvalidate)

test_check("datasauce")
