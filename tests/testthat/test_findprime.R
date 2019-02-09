#' This script tests the findprime function.

library(testthat)
library(mlist)

context("find prime")
test_that("trigonometric functions match identities", {
  
  expect_equal(sin(pi / 4), 1 / sqrt(2))
  expect_equal(cos(pi / 4), 1 / sqrt(2))
  expect_equal(tan(pi / 4), 1)
  expect_error(tan(pi/4, 1))
  expect_error(list(a))
  expect_error(flatten_list_prime(list(1, 1)))
  expect_equal(find_prime(list(12, 18, 20.22, 11)), 11)
})



test_that("List has no prime number", {
  expect_error(find_prime(list(0, 4, 6, 8)), "error")
})


test_that("List is empty", {
  expect_error(find_prime(list()))
})

test_that("Input is not a list", {
  expect_error(find_prime(17.1))
})

test_that("List has one prime number", {
  expect_equal(find_prime(list(12, 18, 20.22, 11)), 11)
})

test_that("List only has non-integers", {
  expect_error(find_prime(list(100.19, 999.1938, -1988274783.282, 37572.18)))
})

test_that("List only has the same prime number multiple times", {
 expect_equal(find_prime(list(7919, 7919, 7919, 7919, 7919, 7919, 7919)), 7919)
})

test_that("List only has prime numbers, and biggest is at the start", {
  expect_equal(find_prime(list(4987, 449, 1901, 3023, 2)), 4987)
})

test_that("List has multiple primes and non-primes, and biggest prime is at the end", {
  expect_equal(find_prime(list(50, 1447, 24, 6389)), 6389)
})
