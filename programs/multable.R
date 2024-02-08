n <- as.integer(readline(prompt = "Enter a number: "))
i <- 1
while(i*n <= 100)
{
  print(paste(i,"x",n,'=',i*n))
  i <- i+1
}
