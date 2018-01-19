#' # DATA 220G — Week 1 - 05
#'
#' ## Putting it all together
#'
#' For the most part, we'll used tidyverse-style operations in this course. BUT you _need_
#' to know base R language operations as well as there are millions of lines of R code out
#' there you need to read. I won't use them often and there's plenty of help so  you'll have
#' to work through this each new time until it becomes second nature.

library(tidyverse)

nh_wx <- read_csv("2017-2008-nx-wx.csv")

nh_wx

glimpse(nh_wx)

#' **IMPORTANT**
#'
#' Folks coming from Excel tend to think in "Rows" or "Cells"
#'
#' Let's pull up an "Excel" view of this data and I'll talk more there.

# View(nh_wx)

#' This is a "new" data set to us, so I like to perform some various exploratory tasks.
#' We'll cover many more of these in week 2, but this is just to get us jump started.

range(nh_wx$date) # what is the date range

length(unique(nh_wx$date)) # how many unique dates?

range(nh_wx$value)

length(unique(nh_wx$value))

range(nh_wx$anomaly)

length(nh_wx$anomaly)

head(nh_wx$date) # to not crowd out the console

tail(nh_wx$date) # to not crowd out the console

#' ### Selecting individual columns
#'
#' You saw the `$` above, but there are a couple other ways

nh_wx$date

nh_wx[, "date"]

select(nh_wx, date) # read the book to really understand this more

#' We can select more than 1 (but not with `$`) and in any order

nh_wx[, c("anomaly", "date")]

select(nh_wx, date, anomaly)

#' Remember, a data frame is just a list of vectors, so we can do vector operations on the "columns"

(nh_wx$value - 32) * 0.5556 # celsius

mutate(nh_wx, value_c = (value - 32) * 0.556)

#' Let me sneak user-defined functions in here as a refresher but we'll cover this often in the semester

to_celsius <- function(temp_in_f) {
  (temp_in_f - 32) * 0.556
}

mutate(nh_wx, value_c = to_celsius(value)) # way more readable

#' ### Indexing data frames

nh_wx[1:10,]

nh_wx[1:10,]$anomaly

nh_wx[1:10, "anomaly"]

slice(nh_wx, 1:10)

select(slice(nh_wx, 1:10), anomaly)

slice(nh_wx, 1:10) %>%
  select(anomaly)

pull(slice(nh_wx, 1:10), anomaly)

slice(nh_wx, 1:10) %>%
  pull(anomaly)

#' ### Finding things in data frames
#'
#' The first parameter (when using `[]`) is either an numeric vector of indices or a
#' logical vector that will let us choose which "rows" we want. Refresh your memory on
#' vectors in the second lesson from this week.
#'
#' For example, this means we can use boolean logic to find things. Like
#' "What year+months had an average temperature above freezing?"

nh_wx[nh_wx$value > 32,]

filter(nh_wx, value > 32)

#' "What year+months" had an average temperature below 0°F?"

filter(nh_wx, value < 0)

#' "What did the average temperature in February look like over the years?"
#'
#' OK, for this one, we'll need some help. There are built-in date operations in R (help links below)
#' but, well use the `lubridate` package since it _really_ simplifies this for us. It will be important
#' to know how to do it without "crutches" at some point, but not in this introduction.

library(lubridate) # note: in "real" scripts we have all the `library()` calls at the top of the script

#' To answer this question, we need to know which `date` is a "February". There's a `month()` function
#' in `lubridate` to help us with this:

month(nh_wx$date)

#' Well, that's useful, but I like names

month(nh_wx$date, label=TRUE) # we'll worry about the "Levels" in another class but this returns a special character vector called a "factor"

#' Let's add that info to the data frame

nh_wx <- mutate(nh_wx, month = month(date, label=TRUE))

nh_wx

filter(nh_wx, month == "Feb")

#' NOTE: We could have done that without modifying the data frame if we wanted to:

nh_wx <- read_csv("2017-2008-nx-wx.csv")

nh_wx

filter(nh_wx, month(date, label=TRUE) == "Feb")

#' REALLY quick intro to plotting
#'
#' The book(s) & resource(s) cover ggplot2. There are many way to plot in R but we'll primarily
#' be using ggplot2. Since ggplot2 is a whole class in and of itself, let's just walk through
#' plotting the average monthly temperature data as a line chart and worry about the details in
#' that class. I'll sneak ggplot2 in quite a bit all semester.
#'
#' NOTE: that it "comes along for the ride" with `tidyverse` so no extra `library()` call is needed.

ggplot(nh_wx) +
  geom_line(aes(date, value))

#' You've got enough ground work, now, for the first project!

#' ### More info
#'
#' Read these. Alot. You'll get spot quizzes occassionally about some esoteric edge cases.

help("read_csv")
help("read.csv") # note the "." vs "_"
help("Date")
help("as.Date")
help("min") # might be good to try this and the other 3 below on some vectors you create
help("max")
help("mean")
help("median")
help("lubridate") # VERY helpful package for working with dates
help("factor")
