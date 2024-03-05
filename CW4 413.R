library(purrr)
library(tibble)

#1
x <- list(2, 4, 5, 9, 1)
y <- list(8, 7, 2, 8, 3)
z <- list(1, 8, 5, 4, 2)
squared_sums <- pmap(list(x, y, z), function(...) sum(c(...))^2)
print(squared_sums)

#2
table <- tribble(
  ~Student, ~Gender, ~Salary,
  "John", "Male", 65000,
  "Alice", "Female", 73000,
  "Juan", "Male", 66000,
  "Beth", "Female", 71500,
  "Denise", "Female", 82000
)
statements <- character(nrow(table))
for(i in 1:nrow(table)) {
  statements[i] <- paste(table$Student[i], "who is", table$Gender[i], ", has a salary that is", table$Salary[i], "dollars per year.")
}

print(statements)

#3

