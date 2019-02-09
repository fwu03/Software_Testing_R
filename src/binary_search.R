# load libraries
suppressPackageStartupMessages(library(testthat))

binary_search <- function(x, list){
  # Usage: The function applies the generic binary search algorithm to search if the value 
  # x exists in the list, and returns TRUE/FAlSE depends on whether the x value has been found.
  #
  # Argument:
  #
  #     x: numeric
  #     list: sorted list of numerics
  #
  # Return:
  #
  #     a logical value (TRUE/FALSE) 
  #
  # Examples:
  #
  # binary_search(4, c(1,2,3,4,5,6))
  # > TRUE
  #
  # binary_search(5, c(10,100,1000,1000))
  # > FALSE
  
  return(NULL)
}

test_binary_search <- function(x){
  # Usage: The function applies the generic binary search algorithm to search if the value 
  # x exists in the list, and returns TRUE/FAlSE depends on whether the x value has been found.
  #
  # Argument:
  #
  #     x: numeric
  #     list: sorted list of numerics
  #
  # Return:
  #
  #     a logical value (TRUE/FALSE) 
  #
  # Examples:
  #
  # test_binary_search()
  # > Success
  
  test_that('Inconsistent results', {
    expect_equal(binary_search(4, c(1,2,3,4,5,6)), TRUE)
    expect_equal(binary_search(5, c(10,100,1000,1000)), FALSE)
  })
}


