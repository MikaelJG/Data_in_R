# Week 1 Practice Code

# Type your name here: Mikael J. Gonsalves

# Complete these coding tasks, then submit your R file for another student to compare against the example output.

# Problem 1 

# Create a data frame that includes two columns, one named "Animals" and the other named "Foods". The first column should be this vector (note the intentional repeated values): Dog, Cat, Fish, Fish, Lizard

#The second column should be this vector: Bread, Orange, Chocolate, Carrots, Milk

#### Write your code below:

Animals <- c("Dog", "Cat", "Fish", "Fish", "Lizard")
Foods <- c("Bread", "Orange", "Chocolate", "Carrots", "Milk")

data.frame(Animals,Foods)

# Problem 2

# Using the data frame created in Problem 2, use the table() command to create a frequency table for the column called "Animals".

#### Write your code below:

frequency_table <- table(Animals)
frequency_table

# Problem 3

# Use read.csv() to import the survey data included in this assignment. Using that data, make a histogram of the column called "pid7".

#### Write your code below:

dat <- read.csv("~/Documents/Carriere/GUXR/Formation/Data with R/Test R files/Assignment_sample.csv")

hist(dat$pid7)

