context("data_validate")

test_that("data_validate",{
    f <- system.file("extdata/example.json", package = "datasauce")
    t <- data_validate(f)
    expect_true(t)}
    ) 
