
#week 6 - Flow control and built-in functions





# Flow control =======================================================

# for loop ----------------------------------------------------------

for (i in 1:10) {
  print(i)
}

file_names <- dir("data")


nums <- c(-20, 500, 32, 400)
sum_val <- 0
for (i in nums) {
  sum_val <- sum_val + i
}
print(sum_val)


file_names <- dir("data")
df <- data.frame()
for (f in file_names) {
  temp <- read.csv(paste0("data/", f))
  df <- rbind(df, temp)
}



# ifelse func ------------------------------------------------------------


x <- 1:10
logic <- x > 5
group <- ifelse(x > 5, ">5", "<=5")


library(dplyr)
df <- data.frame(num = c(2, 7, 4, 10))
df <- df |> mutate(group = ifelse(num > 5, ">5", "<=5"))



# grepl func ------------------------------------------------------------


items <- c("fruit_orange", "vegetable_onion", "fruit_apple", "vegetable_carrot", "fruit_mango", "vegetable_pepper")
index <- grepl("fruit", items)
print(index)

animals <- c("cat_black", "dog_brown", "cat_white", "bird_blue", "dog_gray", "cat_orange")
is_cat <- grepl("cat", animals)
print(is_cat)







# Working with the interface =====================================


# Managing file names in a working folder----------------------------

files <- list.files(path = "data")
print(files)






# Functions and debugging =========================================


# Creating functions----------------------------------------------


sum_two <- function(x, y) {
  result <- x + y
  return(result)
}


mult_two <- function(x,y) {
  result <- x * y
  return(result)
}

mult_two(5,7)



mult_two2 <- function(x,y) {
  if (x > 5 & y > 5)
  {return(x * y)}
  else
  {return(x + y)}
}


mult_two2(4,7)


source("functions.R")


# Finding errors ---------------------------------------------


x1 = 2
x2 = 3

Multiplication <- function(x1, x2) {
  x3 = 1000
  browser()
  y = x1 * x3
  return(y)
}
print(Multiplication(x1, x2))

#When you want to understand what happens inside a function while it runs, you can use the command browser().
#It pauses the function’s execution exactly at the line where you placed it and opens a temporary environment that lets you inspect the internal variables.

#While in this mode, you can:
#Run commands normally (e.g., check variable values, calculate, etc.)
#Use n (short for next) to move to the next line of code
#Use Q (short for quit) to exit the browser and return to the normal R console





