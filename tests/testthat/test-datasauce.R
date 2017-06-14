testthat::context("test datasauce")

library("datasauce")

testthat::test_that(
  
  "we can call datasauce",
  {
    
  datasauce()
    
  })

testthat::test_that(
  "we can validate an example file",
  {
    f <- system.file("extdata/example.json", package = "datasauce")
    compact <- jsonld::jsonld_compact(f, "http://schema.org")
    
    
  }
)
