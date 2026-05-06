#Q1

a<-as.numeric(readline("Enter the first number:"))

b<-as.numeric(readline("Enter the second number:"))


sum_value<- a+b
diff_value<-a-b
prod_value<- a*b
div_value<- a/b
power_value<- a^b
mod_value <- a%%b

result<-c(sum_value,diff_value, prod_value,div_value,power_value, mod_value)

print(result)

cat('Maximum',max(result),'\n')
cat('Minimum',min(result),'\n')
cat('average',mean(result),'\n')


#Q2

n<-as.numeric(readline("Enter the number :"))

if (is.na(n)|| n<=0){
  
  stop("invalid input.please enter a correct number")
}else{
  nums<-sample(1:100,n)
}


sqrt_vals<-sqrt(nums)
round_val<- round(nums)
ceiling_vals<-ceiling(sqrt_vals)
floor_val<-floor(sqrt_vals)

df<-data.frame(
  Numbers=nums,
  Squreroot=sqrt_vals,
  Celing=ceiling_vals,
  Floor_num=floor_vals
)

print(df)


#Q3

n <- as.numeric(readline("Enter number of names: "))
names <- character(n)
for(i in 1:n){
  names[i] <- readline(paste("Enter name", i, ": "))
}

upper_names <- toupper(names)
lengths <- nchar(upper_names)
result <- paste("Name:", upper_names, "- Length:", lengths)
print(result)


#Q4

nums <- 1:200
filtered <- nums[nums %% 3 == 0 & nums %% 5 == 0]
square_root <- sqrt(filtered)
square_val <- filtered^2
result <- data.frame(
  Number = filtered,
  SquareRoot = square_root,
  Square = square_val
)
print(result)

#Q5

a <- as.numeric(readline("Enter a: "))
b <- as.numeric(readline("Enter b: "))
c <- as.numeric(readline("Enter c: "))

D <- b^2 - 4*a*c

if(D > 0){
  root1 <- (-b + sqrt(D))/(2*a)
  root2 <- (-b - sqrt(D))/(2*a)
  print(c(root1, root2))
} else if(D == 0){
  root <- -b/(2*a)
  print(root)
} else {
  cat("Complex roots \n")
}



