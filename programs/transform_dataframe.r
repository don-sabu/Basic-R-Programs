# Exp No: 11
# Author: Don Sabu 21AD024
# Program: Transform dataframe

df <- data.frame(id = c(1,2,3,4),
                 name = c("Ramesh", "Suresh", "Mahesh", "Sumesh"),
                 mark = c(22,24,23,21))
print("Original dataframe:")
print(df)
df["mark"] <- df["mark"] + 3
print("Transformed dataframe:")
print(df)