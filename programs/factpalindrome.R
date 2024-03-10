n <- as.integer(readline(prompt = "Enter a number: "))
fact = 1
for(i in 1:n)
  if(i != 0)
    fact <- fact * i
print(paste("The factorial of ",n," is ",fact))
num <- fact
r <- 0
while(num>0)
{
  d <- num%%10
  r <- r * 10 + d
  num <- num/10
}
if(fact == num)
{
  print("The number is palindrome.")
}  else
{
  print("The number is not palindrome.")
}
