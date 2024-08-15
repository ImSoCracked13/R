
# Create Data
data<-c(9, 10, 7, 8, 9, 6, 5, 9, 4, 7, 1, 7, 2, 7, 8, 5, 4, 3, 10, 7, 3, 7, 8, 6, 9, 7, 4, 2, 3, 9, 4, 3, 7, 5, 5, 2, 7, 9, 7, 1)

# Use table() to get the frequency table
table <- table(data)
# Printing table

print(table)
# Use barplot to visualize 
# a frequency table in a graphic
barplot(table)

prop = table/sum(data)
print(prop)
barplot(prop)

print(mean(data))
print(median(data))

values <- c(266, 231, 223, 262, 260, 230, 191, 182, 165, 153)
max(values) - min(values)

s_values = sort(values)
print(s_input)
q2 = (s_value[5] + s_values[6]/2)
q1 = s_values[3]
q3 = s_values[8]
iqr = q3 - q1
print(iqr)

min = q1 - 1.5*iqr
print(min)
max = q3 + 1.5*iqr
print(max)

boxplot(values, col = "green", border = "cyan", horizontal = TRUE)



                                                
