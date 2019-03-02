binary_search <- function(x, lst){
  # Usage: The function applies the generic binary search algorithm to search if the value
  # x exists in the lst, and returns a vector contains: TRUE/FAlSE depends on whether the x value has been found,
  # x value, and x position indice in lst
  
  # Argument:
  #
  #     x: numeric
  #     lst: sorted vector of numerics
  #
  # Return:
  #
  #     a list contains:
  #       - first character represents a logical value (TRUE/FALSE)
  #       - second character represents a numeric value of x
  #       - third character represents a numeric in range of 1 to length(lst) where NA indicates the element is not in the list
  #
  # Examples:
  #
  # binary_search(4, c(1,2,3,4,5,6))
  # > c('TRUE','4','4')
  #
  # binary_search(5, c(10,100,200,300))
  # > c('FALSE','5','0')
  
  # Raise error if input x is not integer
  if (!is.numeric(x)){
    stop("Input x must be an numeric")}
  
  # Raise error if input lst contains non-integer (eg. character, boolean...)
  if (!is.numeric(lst)){
    stop("Input lst must be a vector of numerics")}
  
  # Raise error if input lst contains values greater or equal to 1000
  if (max(lst) >= 1000){
    stop("Input lst contains values exceed 1000. Please limit range of input values to less than 1000.")}
  
  # Raise error if input x is greater or equal to 1000
  if (x >= 1000){
    stop("Input x exceeds 1000. Please limit range of input value to less than 1000.")}
  
  # Raise error if input lst is not sorted
  if (is.unsorted(lst)){
    stop("Input lst must be sorted.")}
  
  # ---------------------------
  # Binary Search Algorithm
  # ---------------------------
  
  low <- 1
  high <- length(lst)
  
  while (low <= high){
    mid <- floor((low+high)/2)
    if (lst[mid] < x){
      low <- mid + 1}
    else if (x < lst[mid]){
      high <- mid - 1}
    else{
      return(c('TRUE',x,mid))}
  }
  return(c('FALSE',x,NA))
}

