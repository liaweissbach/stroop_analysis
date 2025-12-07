# R course for beginners
# Week 1
# assignment by Lia Weissbach, id 323118877

#### CREATE DATAFRAME ####

# 1. Assign values

number = c(1,2,3,4,5,6)
gender = c("f","m","m","f","f","f")
age = c(16,30,35,36,28,20) 
depression = c(0,1,0,0,0,0)

# 2. combine to df

table = data.frame(number,gender,age,depression)

# 3. create csv

write.csv(table, file = "table.csv", row.names = FALSE)