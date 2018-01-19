#' # DATA 220G — Week 1 - 02
#'
#' ## R Refresher
#'
#' ### Data Types
#'
#' ### Vectors
#'
#' A data structure that holds element of the same "mode", "type"

"A single element character vector"

class("A single element character vector")

mode("A single element character vector")

typeof("A single element character vector")

35L

class(35L)

mode(35L)

typeof(35L)

41

class(41)

mode(41)

typeof(41)

41.0

class(41.0)

TRUE

class(TRUE)

mode(TRUE)

typeof(TRUE)

#' #### Going beyond single length vectors

c("This", "is", "a", "test")

class(c("This", "is", "a", "test"))

length(c("This", "is", "a", "test"))



c(35L, 10L, 20L, 11L)

class(c(35L, 10L, 20L, 11L))

length(c(35L, 10L, 20L, 11L))



class(c(35L, 10L, 20, 11L))


c(TRUE, FALSE, 1, "twelve")

#' #### Keeping things around for a while

a_good_variable_name <- c("This", "is", "a", "test")

class(a_good_variable_name)

length(a_good_variable_name)

#' A better variable name:

ages <- c(35L, 10L, 20L, 11L)

class(ages)

length(ages)

#' #### Indexing vectors

ages[1]

ages[3]

ages[c(1, 2)]

ages[c(3, 1)]

ages[1:3]

ages[4:1]

ages[c(4, 3, 2, 1)]

ages[-1]

ages[100]

ages[0.1]

#' #### Other operations on vectors

1 + 1

3 * 2

c(1, 2) + c(5, 6)

c(1, 2) * 2

c(1, 2) ^ 10

c(1, 2) - 1

#' Not just numbers

nchar(a_good_variable_name)

#' Not just "math"

ages < 100

ages > 10

ages == 10 | ages == 35

ages == 10 || ages == 35

#' #### Indexing with logical vector results

ages[ages == 10 | ages == 35]

ages[ages> 100]

ages[TRUE]

ages[c(TRUE, FALSE)]

ages[c(TRUE, FALSE, TRUE)]

ages[c(TRUE, FALSE, TRUE, TRUE)]

ages[c(TRUE, TRUE)]

ages[FALSE]

ages[which(ages < 30)]

which(ages < 30)

#' #### Growing vectors

small_vector <- c(11, 12, 13, 14)

small_vector

small_vector <- c(small_vector, c(4, 3, 2, 1))

small_vector

#' ### More info
#'
#' Read these. Alot. You'll get spot quizzes occassionally about some esoteric edge cases.

help("vector")
help("character")
help("integer")
help("numeric")
help("double")
help("logical")

help("c")
help("append")

help("mode")
help("typeof")

help("NA")

help("Arithmetic")
help("Syntax")

help("::")

?base::Logic

help("[") # Really read this one

#' ### On your own
#'
#' You won't excel in "Data Science" without having a curiuos nature. Experiment with
#' similar operations above for those and other vector types. Try to generate error
#' messages and then figure out why the error occurred.

