# Date: 2019-02-08
# Author: Fan Wu
# Usage: This script is used to test the function for binary_search.R

library(testthat)
library(mlist)

context("binary search")


# test when the inputs have incorrect data type
test_that('Test the correctness of input data types',{
  correct_num_x <- 5
  incorrect_num_x <- "5"

  correct_lst <- c(1,2,3,4,5)
  incorrect_lst <- c('a','f','e')
  
  expect_error(binary_search(incorrect_num_x, correct_list)) #expect error for incorrect data type of x
  expect_error(binary_search(correct_num_x, incorrect_list)) #expect error for incorrect data type of lst
})

# test when the inputs have incorrect data value
test_that('Test the correctness of input data values',{
  correct_num_x <- 5
  incorrect_num_x <- 5000
  
  correct_lst <- c(1,2,3,4,5)
  incorrect_lst <- c(1,2000,3,4,5)
  
  expect_error(binary_search(incorrect_num_x, correct_list)) #expect error for x greater than 1000
  expect_error(binary_search(correct_num_x, incorrect_list)) #expect error for lst contains value greater than 1000
})

# test the correctness of the function output
test_that('Test the correctness of the function outputs', {
  x <- 5
  lst1 <- c(1,2,3,4,5,6)
  lst2 <- c(1,2,3)

  expect_equal(binary_search(x, lst1), c('TRUE','5','5')) #expect TRUE if x is in the lst with its value and position
  expect_equal(binary_search(x, lst2), c('FALSE','5',NA)) #expect FALSE if x is not in the lst and NA for position
  expect_equal(is.vector(binary_search(x, lst1)), TRUE) #expect the output should be vector
  expect_equal(length(binary_search(x, lst1)), 3) #expect the output should have length 3
})

