# Date: 2019-02-08
# Author: Fan Wu
# Usage: This script is used to test the function for binary_search.R

library(testthat)
library(mlist)

context("binary search")

# Input Tests
test_that("Input x is not a numeric", {
  expect_error(binary_search('5', c(1,2,3,4,5)))
  expect_error(binary_search(list(1,2), c(1,2,3,4,5)))
})

test_that("Input x should be lower than 1000", {
  expect_error(binary_search(5000, c(1,2,3,4,5)))
})


test_that("Input lst must contain only numerics", {
  expect_error(binary_search(5, c('a','f','e')))
})

test_that("Input lst contains values exceed 1000", {
  expect_error(binary_search(5, c(1,2000,3,4,5)))
})

test_that("Input lst is not sorted", {
  expect_error(binary_search(5, c(5,4,20,3,10)))
})


# Output Tests
test_that('Test the correctness of the function outputs', {
  expect_equal(binary_search(5, c(1,2,3,4,5,6)), c('TRUE','5','5'))
  expect_equal(binary_search(5, c(1,2,3)), c('FALSE','5',NA))
  expect_equal(binary_search(5, c(6,7,8)), c('FALSE','5',NA))
})


