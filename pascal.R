n <- as.integer(readline(prompt = "Enter a number of rows: "))
for(line in 1:n)
{
  c = 1
  cat(rep(" ",n-line))
  for(e in 1:line)
  {
    cat(paste(c," "))
    c = c * (line - e) / e
  }
  cat("\n")
}