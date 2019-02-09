# Test function for flatten_list_prime.R


# test when the inputs have correct formats
test_that('Test the correctness of input data types',{

  incorrect_list <- list("4", "1", "2")
  incorrect_vector <- c(1,4,"hello")

  expect_error(flatten_list_prime(incorrect_list)) #expect error for incorrect data type within list
  expect_error(flatten_list_prime(incorrect_vector)) #expect error for incorrect data type within vector
})

# test function outputs
test_that('test the correctness of the function outputs', {
  x <- 5


  nested <- list(list(1,2,3), list(4,5,6))
  flatten <- list(3,5)

  expect_equal(flatten_list_prime(nested), flatten) #expect TRUE when nested list are flatten
  expect_true(flatten_list_prime(nested) <= length(flatten)) #expect True since length of flatten cannot be smaller than nested
  expect_true(typeof(flatten_list_prime(nested)) == "list") #expect True since function suppose to return a list
})

# test values of elements within inputs to be less than 1000
test_that('test values of elements within inputs to be less than 1000',{

  incorrect_list_value <- list(list(1,2,3), list(4,5,1000))
  incorrect_list_value2 <- list(list(1,2,3), list(4,5,6550))

  expect_error(flatten_list_prime(incorrect_list_value)) #expect False since max values within list exceed 1000
})
