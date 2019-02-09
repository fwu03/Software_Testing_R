# Date: 2019-02-08
# Author: Fan Wu
# Usage: This script is used to test the function for binary_search.R


# test when the inputs have incorrect data type
test_that('Test the correctness of input data types',{
  correct_num_x <- 5
  incorrect_num_x <- "5"
  
  correct_list <- list(1,2,3,4,5)
  incorrect_list <- list('a','f','e')
  incorrect_list2 <- c(1,4,10)
  
  expect_error(binary_search(incorrect_num_x, correct_list)) #expect error for incorrect data type of x
  expect_error(binary_search(correct_num_x, incorrect_list)) #expect error for incorrect data type of list
  expect_error(binary_search(correct_num_x, incorrect_list2)) #expect error for incorrect data type of list
})

# test the correctness of the function
test_that('test the correctness of the function outputs', {
  x <- 5
  list1 <- list(1,2,3,4,5,6)
  list2 <- list(10,100,1000,1000)
  
  expect_equal(binary_search(x, list1), list(TRUE,5,5)) #expect TRUE if x is in the list with its value and position
  expect_equal(binary_search(x, list2), list(FALSE,5,0)) #expect FALSE if x is not in the list and 0 for position
})

# test the position value in function's output is within the range (i.e. 0 to length(list))
test_that('test the range of function outputs',{
  x <- 5
  list1 <- list(1,2,3,4,5,6)
  list2 <- list(10,100,1000,1000)
  
  expect_true(binary_search(x, list1)[3] %in% (0:length(list1))) #expect TRUE when x is in the list, and function's output still within the range
  expect_true(binary_search(x, list2)[3] %in% (0:length(list2))) #expect TRUE when x isn't in the list, and function's output still within the range
})




