#' This script tests the findprime function.

library(testthat)
library(mlist)

context("find prime")

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
  expect_equal(find_prime(list(907, 907, 907, 907, 907, 907, 907)), 907)
})

test_that("List only has prime numbers, and biggest is at the start", {
  expect_equal(find_prime(list(977, 449, 599, 331, 2)), 977)
})

test_that("List has multiple primes and non-primes, and biggest prime is at the end", {
  expect_equal(find_prime(list(50, 449, 24, 727)), 727)
})

test_that("List only has prime numbers, and biggest is at the end", {
  expect_equal(find_prime(list(877, 449, 97, 599, 2)), 877)
})