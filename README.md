# mlist

## Contributors

|Name|Github.com User Id|
|--|--|
|Bailey Lei (baileyle)|[blei7](https://github.com/blei7)|
|Daniel Lin (dglin)|[danielglin](https://github.com/danielglin)|
|Fan Wu (fwu03)|[fwu03](https://github.com/fwu03)|

## Versions
| Document | Description |
|-|-|
| [Milestone 1](../master/README.md) | Project Proposal |

## Package Overview

This project provides several tools to manipulate lists in R.  
For example, a user search through a list for a certain kind of item
The repository includes the following functions:

## Functions

|ID|Function|Description|
|--|--|--|
|1|binary_search(x, list)|Search if the value `x` exists in the `list`, and return a list contains: `TRUE/FALSE` depends on whether the `x` value has been found, `x` value, and `x` position indices in `list`|
|2|flatten_dataframe_prime(dataframe)|This function takes an input dataframe of numbers and returns a vector that contains only the prime numbers in that dataframe.|
|3|find_prime(list)| Return the largest prime number for a given list or vector.|

## R Environment

1. binary_search(x, list): In the R environment, there are two functions have the similar functionality as binary_search. The first one is [findintervals](https://www.rdocumentation.org/packages/pracma/versions/1.9.9/topics/findintervals), which returns the position indices of a numeric value in a numeric vector. Another one is the operator `%in%` which is used to identify if an element belongs to a vector. Comparing with them, the binary_search function is able to return a list contains whether `x` is in the `list`, `x` value, `x` position indices in `list`.

2. flatten_dataframe_prime(dataframe): There is no function that returns the prime numbers in a dataframe.

3. find_prime(list): There is no function that find the largest prime within a list, but there is similar function in R environment, such as [isprime](https://www.rdocumentation.org/packages/gmp/versions/0.5-13.2/topics/isprime), that test if a number is a prime or not.

## Dependencies

- R (≥ 3.0.2)
- testthat (≥ 2.0.1)
