# Create dataset
df <- data.frame(
  name = c(" Raj","Amit ","Neha","raj"," Amit "),
  marks = c("80","90", NA,"85","90"),
  city = c("Pune","pune","Mumbai","PUNE","Mumbai")
)

#1.... Remove spaces
df$name <- trimws(df$name)

#2... Convert names to lowercase
df$name <- tolower(df$name)

#3.... Convert marks to numeric
df$marks <- as.numeric(df$marks)

#4... Replace NA with 85
df$marks[is.na(df$marks)] <- 85

# 5...Convert city names to lowercase
df$city <- tolower(df$city)

# 6...Create grade column
df$grade <- ifelse(df$marks >= 85, "A", "B")

# Filter marks > 80
new_df <- df[df$marks > 80, ]

# Print final data
print(df)

# Print filtered data
print(new_df)




















#Q3...

# Create dataset
data <- data.frame(
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Purchase = c("Yes","No","Yes","Yes","No","Yes"),
  Amount = c(5000,7000,8000,6000,4000,9000)
)

# Show dataset
print(data)


# 1. Mean (Average) of Amount
mean(data$Amount)

# 2. Median (Middle Value) of Amount
median(data$Amount)

# 3. Frequency table of Gender
table(data$Gender)

# 4. Cross table of Gender and Purchase
table(data$Gender, data$Purchase)

# 5. Total purchase amount by Gender
aggregate(Amount ~ Gender, data, sum)

# 6. Count number of "Yes" purchases
sum(data$Purchase == "Yes")