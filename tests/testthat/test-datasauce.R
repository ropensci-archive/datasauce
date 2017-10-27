testthat::context("test datasauce")

test_that("validate a dataset",{
    f <- system.file("extdata/example.json", package = "datasauce")
    t <- data_validate(f)
    expect_true(t)}
    ) 
