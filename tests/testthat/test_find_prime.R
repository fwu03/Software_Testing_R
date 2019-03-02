#' This script tests the findprime function.

library(testthat)
library(mlist)

context("find prime")

test_that("List has no prime number", {
  expect_equal(find_prime(c(0, 4, 6, 8)), "No prime number in vector")
})

test_that("List is empty", {
  expect_equal(find_prime(list(1, 4, 5)), "Input type must be a vector of numeric value")
})

test_that("List is empty", {
  expect_equal(find_prime(c()), "No prime number in vector")
})

test_that("Input is not a list", {
  expect_equal(find_prime(17.1), "No prime number in vector")
})

test_that("vector with only integers", {
  expect_equal(find_prime(c(100.19, 999.1938, -1988274783.282, 37572.18)),
  "Input values exceed 1000. Please limit range of input values to less than 1000.")
})

test_that("List only has the same prime number multiple times", {
  expect_equal(find_prime(c(907, 907, 907, 907, 907, 907, 907)), 907)
})

test_that("List only has prime numbers, and biggest is at the start", {
  expect_equal(find_prime(c(977, 449, 599, 331, 2)), 977)
})

test_that("List has multiple primes and non-primes, and biggest prime is at the end", {
  expect_equal(find_prime(c(50, 449, 24, 727)), 727)
})

test_that("List only has prime numbers, and biggest is at the end", {
  expect_equal(find_prime(c(877, 449, 97, 599, 2)), 877)
})
