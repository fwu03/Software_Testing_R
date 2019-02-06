# load libraries
suppressPackageStartupMessages(library(testthat))

binarysearch <- function(x, list){
  # Usage: The function applies the generic binary search algorithm to search if the value 
  # x exists in the list, and returns TRUE/FAlSE depends on whether the x value has been found.
  #
  # Argument:
  #
  #     x: numeric, character
  #     list: sorted list of numerics, sorted list of characters
  #
  # Return:
  #
  #     a logical value (TRUE/FALSE) 
  #
  # Examples:
  #
  # binarysearch(4, c(1,2,3,4,5,6))
  # > TRUE
  #
  # binarysearch(5, c(10,100,1000,1000))
  # > FALSE
  #
  # binarysearch('apple', c('apple', 'banana', 'pineapple'))
  # > TRUE
  #
  # binarysearch('', c('apple', 'banana', 'pineapple'))
  # > FALSE
  
  return(NULL)
}

testbinarysearch <- function(x){
  # Usage: The function applies the generic binary search algorithm to search if the value 
  # x exists in the list, and returns TRUE/FAlSE depends on whether the x value has been found.
  #
  # Argument:
  #
  #     x: numeric, character
  #     list: sorted list of numerics, sorted list of characters
  #
  # Return:
  #
  #     a logical value (TRUE/FALSE) 
  #
  # Examples:
  #
  # testbinarysearch()
  # > Success
  
  test_that('Inconsistent results', {
    expect_equal(binarysearch(4, c(1,2,3,4,5,6)), TRUE)
    expect_equal(binarysearch(5, c(10,100,1000,1000)), FALSE)
    expect_equal(binarysearch('apple', c('apple', 'banana', 'pineapple')), TRUE)
    expect_equal(binarysearch('', c('apple', 'banana', 'pineapple')), FALSE)
  })
}


