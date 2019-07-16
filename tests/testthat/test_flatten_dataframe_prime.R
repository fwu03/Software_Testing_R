# Test function for flatten_dataframe_prime.R

library(testthat)
library(mlist)

context("flatten dataframe")


# test when the inputs have correct formats
test_that('Test the correctness of input data types',{

  incorrect_all_str <- data.frame("4", "1", "2")
  incorrect_mix <- data.frame(1,4,"hello")

  expect_error(flatten_dataframe_prime(incorrect_all_str)) #expect error for incorrect data type within list
  expect_error(flatten_dataframe_prime(incorrect_mix)) #expect error for incorrect data type within vector
})

# test function outputs
test_that('test the correctness of the function outputs', {
  x <- 5


  double_col_df <- data.frame(c(1,2,3), c(4,5,6))
  primes <- c(2, 3,5)

  expect_equal(flatten_dataframe_prime(double_col_df), primes) #expect TRUE when nested list are flatten
  expect_true(length(flatten_dataframe_prime(double_col_df)) <= length(primes)) #expect True since length of flatten cannot be smaller than nested
  expect_true(typeof(flatten_dataframe_prime(double_col_df)) == "double") #expect True since function suppose to return a list
})

# test values of elements within inputs to be less than 1000
test_that('test values of elements within inputs to be less than 1000',{

  incorrect_list_value <- list(list(1,2,3), list(4,5,1000))
  incorrect_list_value2 <- list(list(1,2,3), list(4,5,6550))

  expect_error(flatten_dataframe_prime(incorrect_list_value)) #expect error because input is not a dataframe
})

# test large/small values
test_that("test extreme numeric values",{
  extreme_df <- data.frame(c(-10000), c(0), c(1), c(-28359.34))
  big_vals_df <- data.frame(c(91837.01, 31642), c(18747756, 19498.8287))
  expect_equal(flatten_dataframe_prime(extreme_df), c())
  expect_error(flatten_dataframe_prime(big_vals_df))
})

# test empty dataframe
test_that("test empty dataframe", {
  empty_df <- data.frame()

  expect_error(flatten_dataframe_prime(empty_df))
})
