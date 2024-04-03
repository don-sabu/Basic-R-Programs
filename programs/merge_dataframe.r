# Exp No: 10
# Author: Don Sabu 21AD024
# Program: Merge two dataframe

df1 <- data.frame(id = c(1,2,3,4),
                  name = c("Ramesh", "Suresh", "Mahesh", "Sumesh"))
df2 <- data.frame(id =  c(2,3,4),
                  age = c(21,23,22))
print("Dataframe 1:")
print(df1)
print("Dataframe 2:")
print(df2)
merged <- merge(df1, df2, by="id")
print("Merged dataframe:")
print(merged)