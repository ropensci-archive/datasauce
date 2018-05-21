
testthat::context("Simple tests")

testthat::test_that("We can call a constructor", {
  x <- Thing(url = "http://schema.org")
  testthat::expect_is(x, "list")
  
  out <- as_jsonld(x)
  out <- write_jsonld(x, "x.json")
  
  unlink("x.json")
})
