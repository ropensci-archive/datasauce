testthat::context("test datasauce")

library("datasauce")

testthat::test_that(
  
  "we can call dataset",
  {
    f <- system.file("extdata/example.json", package = "datasauce")
    t <- data_validate(f)
    expect_is(t, TRUE)
  }) 
