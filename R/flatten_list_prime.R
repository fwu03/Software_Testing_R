#' Flattens a list so that all prime numbers in embedded lists are 
#' returned in a flat list
#' 
#' @param l A list of numbers; largest prime cannot be greater than 1000
#' @return A flat list that has all of the prime numbers in l 
#' 
#' @export
#' @examples
#' a <- list(list(2, 3, 4, 5), 19, list(131, 127))
#' flatten_list_prime(a) returns list(2, 3, 5, 19, 131, 127)
#' 
flatten_list_prime <- function(l) {
  
}