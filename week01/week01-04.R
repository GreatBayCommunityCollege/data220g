#' # DATA 220G — Week 1 - 04
#'
#' ## R Refresher
#'
#' ### Data Types
#'
#' ### Data Frames
#'
#' - A _very special_ `list`

?tibble::data_frame

#' - One of the most foundational data structures in data science
#' - where we'll spend alot of time in the coming weeks
#' - Do the book reading before proceeding
#' - Read <https://cran.r-project.org/doc/manuals/r-release/R-intro.html#Packages> to dive into packages

library(tidyverse) # don't worry about the output from this just yet

starwars # this is a built-in data set from the "tidyverse"

class(starwars)

typeof(starwars)

mode(starwars)

dim(starwars)

data.frame(starwars)

str(starwars)

glimpse(starwars)

str(unclass(starwars))

#' The reading covered some operations. We'll cover more in other classes And we'll continue
#' discussing data frames in the 5th and final segment for this one.

#' ### More info
#'
#' Read these. Alot. You'll get spot quizzes occassionally about some esoteric edge cases.

help("data.frame")
?tibble::data_frame
help("unclass")
help("str")
help("glimpse")
help("dim")
