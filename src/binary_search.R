# load libraries
suppressPackageStartupMessages(library(testthat))

binary_search <- function(x, list){
  # Usage: The function applies the generic binary search algorithm to search if the value 
  # x exists in the list, and returns a list contains: TRUE/FAlSE depends on whether the x value has been found,
  # x value, and x position indice in list
  
  # Argument:
  #
  #     x: numeric
  #     list: sorted list of numerics
  #
  # Return:
  #
  #     a list contains:
  #       - first element is a logical value (TRUE/FALSE)
  #       - second element is a numeric value of x
  #       - third element is a numeric in range of 0 to length(list) where 0 indicates the element is not in the list
  #
  # Examples:
  #
  # binary_search(4, list(1,2,3,4,5,6))
  # > list(TRUE,4,4)
  #
  # binary_search(5, list(10,100,1000,1000))
  # > list(FALSE,5,0)
  
  return(NULL)
}
