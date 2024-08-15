
data_path = 'D:/Studies/R/hydro.csv'
dat = read.csv(data_path)

fix(dat)

# Data understanding:
# Data types, distribution, outlier, linear, or non-linear

# Detect any potential outlier: IQR (Lecture 03, Descriptive Analysis) / Z-score
x = dat$Hydrocarbon.Level
y = dat$Purity 

#IQR for x
sorted_x = sort(x)
print(sorted_x)
Q2_x = (sorted_x[10] + sorted_x[11])/2
Q1_x = (sorted_x[5] + sorted_x[6])/2
Q3_x = (sorted_x[15] + sorted_x[16])/2
IQR_x = Q3_x - Q1_x
min_x = Q1_x - IQR_x * 1.5
max_x = Q3_x + IQR_x * 1.5
print(min_x)
print(max_x)

# C2: Data visualization
library(ggplot2)
ggplot(dat, aes(y = Purity, fill = "Purity"))
geom_boxplot()
theme_minimal() + ggtitle("Box Plot of Purity") + ylab("Purity")
scale_fill_manual(values = 'aquamarine') + theme(legent.position = "none")

# Remove / Normalize
outlier = subset(dat, dat$Hydrocarbon.Level < min_x | dat$Hydrocabon.Level > 
                   max_x | dat$Purity < min_x | dat$Purity > max_y)
print(outlier)

clean_data = subset(dat, dat$Hydrocarbon.Level < min_x | dat$Hydrocabon.Level > 
                      max_x | dat$Purity < min_x | dat$Purity > max_y)
print(clean_data)

# Data modelling
# Linear Regression Analysis
# Hydrocarbon.Level (x) is an independent variable
x = clean_data$Hydrocarbon.Level
# Purity (y) is a dependent variable
y + clean_data$Purity
plot(y-x)
# The relationship between "Hydrocarbon.Level" and "Purity"

model = lm(data = clean_data, Purity - Hydrocarbon.Level)
print(model)
predicted_value = predict(model), clean_data
residuals = cleandata$Purity - predicted_value

result = 
