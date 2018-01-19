#' # DATA 220G — Week 1 - 03
#'
#' ## R Refresher
#'
#' ### Data Types
#'
#' ### Lists
#'
#' A data structure that lets us hold values of different modes/types

lst <- list("an element", "another elemnt", "one more")

lst

c("an element", "another elemnt", "one more")

list(c("an element", "another elemnt", "one more"))

list("John", "Doe", 33L, 3L, TRUE)

jdoe <- list(name = c(first = "John", last = "Doe"), age = 33L, number_of_kids = 3L, lives_in_maine = TRUE)

jdoe

fsmith <- list(name = c(first = "Fran", last = "Smith"), age = 23L, number_of_kids = 0L, lives_in_maine = FALSE)

fsmith

ppl <-  list(jdoe, fsmith)

ppl

ppl[1]

ppl[2]

ppl[1:2]

ppl[-1]

ppl[1]$name

ppl[[1]]$name

ppl[[1]]["name"]

ppl[[1]][["name"]]$first

ppl[[1]][["name"]]["first"]

list(1) + list(2)

list(1)[[1]] + list(2)[[1]]

#' _"The most important distinction between [, [[ and $ is that the [ can select more than
#' one element whereas the other two select a single element."_

list(
  c("A", "B", "C"),
  1:10,
  c(TRUE, FALSE)
)

#' We'll get more into nuances of comlex lists when we work with some advanced data input.

#' ### More info
#'
#' Read these. Alot. You'll get spot quizzes occassionally about some esoteric edge cases.

help("list")
help("[[")
