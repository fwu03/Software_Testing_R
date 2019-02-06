# Software_Testing

## Contributors

|Name|Github.com User Id|
|--|--|
|Bailey Lei|[blei7](https://github.com/blei7)|
|Daniel Lin|[danielglin](https://github.com/danielglin)|
|Fan Wu|[fwu03](https://github.com/fwu03)|

## Versions
| Document | Description |
|-|-|
| [Milestone 1](../master/Proposal.md) | Project Proposal |

## Package Overview

This project provides several tools to manipulate lists in Python.  
For example, a user search through a list for a certain kind of item
The repository includes the following functions:

## Functions

|ID|Function|Description|
|--|--|--|
|1|BinarySearch(x, list)|Search if the value `x` exists in the `list`, and return `TRUE/FALSE` depends on whether the `x` value has been found|
|2|FlattenList(list)|This function takes an input list and returns a flat list that has all the elements.  For example, the list `list(c(1, 2), c(3, 4))` would be flattend to the list `list(1, 2, 3, 4)`.|
|3|||

## R Environment

1. BinarySearch(x, list): In the R environment, there is another package has the similar functionality called, [findintervals](https://www.rdocumentation.org/packages/pracma/versions/1.9.9/topics/findintervals). This function contains two inputs: a numeric value `x` and a numeric vector `xs`, and it finds the indices `i` in `xs` such that either x=xs[i] or `xs[i] or xs[i]>x>xs[i+1]`. However, the `findintervals` function is restricted to numeric vectors. The BinarySearch function is able to handle both numeric and character vectors.
2. FlattenList(list): In base R, there is a function called [unlist](https://stat.ethz.ch/R-manual/R-devel/library/base/html/unlist.html) that has the same functionality.

