# R course for beginners
# Week 1
# assignment by Lia Weissbach, id 323118877

#### CREATE DATAFRAME ####

# 1. Assign values

number <- 1:6
gender <- sample(c("f","m"), size = 6, replace = TRUE)
age <- sample(15:40, size = 6, replace = TRUE)
depression <- sample(c(0,1), size = 6, replace = TRUE)

# 2. combine to df

table = data.frame(number,gender,age,depression)

# 3. create csv

write.csv(table, file = "table.csv", row.names = FALSE)