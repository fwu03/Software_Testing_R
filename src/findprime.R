
# load libraries
suppressPackageStartupMessages(library(testthat))


findprime <- function(x){
  
  # Usage: Find largest prime numbers within a list of integer.
  #
  # Argument:
  #
  #      x : a list of integer.
  #
  # Return:
  #
  #      an integer
  #
  # Examples:
  #
  # findprime([0,1,2,3,4,5])
  # >5
  #
  # findprime([0,1])
  # > "No prime number in list" 
  #
  # findprime(["hello", 1, 5])
  # > "Exception error: input list must contains only integers"

  return(NULL)
}

testfindprime <- function(x){
  
  # Usage: Find largest prime numbers within a list of integer.
  #
  # Argument:
  #
  #      x : findprime function
  #
  # Return:
  #
  #      string: Success or exception error
  #
  # Examples:
  #
  # testfindprime()
  # >Success

  
  test_that('Inconsistent results', {
    expect_equal(findprime([0,1,2,3,4,5]), 5),
    expect_equal(findprime([0,1]), "No prime number in list"),
    expect_equal(findprime(["hello", 1, 5]), "No prime number in list")
    })
}




