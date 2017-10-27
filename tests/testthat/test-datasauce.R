testthat::context("test datasauce")

library("datasauce")

testthat::test_that(
  
  "we can call datasauce",
  {
    f <- system.file("extdata/example.json", package = "datasauce")
    data_validate(f)
  }) 
  }
)
