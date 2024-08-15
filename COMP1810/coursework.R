



# Install and load the e1071 package (if not installed)
install.packages("dplyr")
install.packages("tidyverse")
install.packages("e1071")




# Task (A)
dat <- read.csv("E:/COMP1810/e-shop clothing 2008.csv", sep = ";")
colnames(dat)
relevant_columns <- dat[c("month", "day", "order.sells.","price")]
fix(relevant_columns)




# Task (B)

# Sum of Sells
dat <- read.csv("E:/CW/e-shop clothing 2008.csv", sep = ";")
sum(dat$order.sells.)

# Sum NA Sells and Total Sells
sum(is.na(dat)) 

x = c(dat$order.sells)

library(ggplot2)

ggplot(dat, aes(y = month, fill = "Month")) +
  geom_boxplot(fill = "magenta")+
  theme_minimal()+
  ggtitle("Box plot of months")+
  ylab("Months")

library(ggplot2)

ggplot(dat, aes(y = order.sells., fill = "Order sells")) +
  geom_boxplot(fill = "green")+
  theme_minimal()+
  ggtitle("Box plot of sell")+
  ylab("Sells")



# Load required libraries
library(ggplot2)

dat <- read.csv("E:/CW/e-shop clothing 2008.csv", sep = ";")
# Define variables
x <- dat$month
y <- dat$order.sells.

# Create bar plot using ggplot
ggplot(data = dat, aes(x = month, y = order.sells.)) +
  geom_bar(stat = "identity", fill = "cyan")

# Remove data where month equals 8
clean_data <- subset(dat, !(dat$month == 8))




# Task(C)
# Calculate the sum of N/A values in data set 
dat <- read.csv("E:/COMP1810/e-shop clothing 2008.csv", sep = ";")
fix(dat)
# Defining variables from the table
x = dat$month
y = dat$order.sells.

# Create Data
library(ggplot2)

# Basic pie chart
ggplot(dat, aes(x="", y=order.sells., fill=month)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y")

clean_data = subset(dat, !(dat$month == 8))
fix(clean_data)


# Create Data
library(ggplot2)

# Basic pie chart
ggplot(clean_data, aes(x="", y=order.sells., fill=month)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y")




# Task (D)
# Step 1: Load the data
input_data <- read.csv("E:/COMP1810/input.csv", sep = ',')
fix(input_data)

# Descriptive analysis
salary <- input_data$salary  # Extract 'salary' column from input_data

# Mean
mean_salary <- mean(salary)

# Median
median_salary <- median(salary)

# Mode (Note: R doesn't have a built-in function for mode, we can create a custom function)
get_mode <- function(x) {
  uniq_x <- unique(x)
  uniq_x[which.max(tabulate(match(x, uniq_x)))]
}
mode_salary <- get_mode(salary)

# Alternative method for Mode
mode_salary <- names(sort(-table(salary)))[1]

# Standard deviation
sd_salary <- sd(salary)

# Variance
var_salary <- var(salary)

# Display results
cat("Mean Salary:", mean_salary, "\n")
cat("Median Salary:", median_salary, "\n")
cat("Mode Salary:", mode_salary, "\n")
cat("Standard Deviation of Salary:", sd_salary, "\n")
cat("Variance of Salary:", var_salary, "\n")


# Read the CSV file
input_data <- read.csv("E:/COMP1810/input.csv", sep = ',')

# Extract salary data
x <- input_data$salary

# Plot histogram with customized colors
hist(x, prob = TRUE, col = "limegreen")  # Customize histogram color
lines(density(x), col = "purple")  # Customize density line color



# Task (E)
# Part I
# Load required packages
library(dplyr)
library(ggplot2)

# Load the starwars dataset
data(starwars)

# Filter the dataset to extract actors meeting the conditions
filtered_actors <- starwars %>%
  filter(eye_color != "black" & height > 150)

# Create a ggplot for visualization
ggplot(filtered_actors, aes(x = height, y = mass, color = species)) +
  geom_point() +
  labs(x = "Height (cm)", y = "Mass", title = "Actors with Eye Color Not Black and Height over 150cm")






