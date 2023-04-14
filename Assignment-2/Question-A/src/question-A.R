# loading the data
diabetes <- read.csv("diabetes.csv")

# setting seed for reproducibility
set.seed(123)

# taking a random sample of 25 observations
sample_data <- diabetes[sample(nrow(diabetes), 25), ]

# calculating the mean and highest glucose values of the sample
sample_mean_glucose <- mean(sample_data$Glucose)
sample_max_glucose <- max(sample_data$Glucose)
pop_mean_glucose <- mean(diabetes$Glucose)
pop_max_glucose <- max(diabetes$Glucose)

print(sample_mean_glucose)
print(sample_max_glucose)
print(pop_mean_glucose)
print(pop_max_glucose)

# plotting a histogram to compare the distribution of glucose in the sample and population
par(mfrow = c(1,2))
hist(diabetes$Glucose, main = "Population Glucose Distribution", xlab = "Glucose")
hist(sample_data$Glucose, main = "Sample Glucose Distribution", xlab = "Glucose")

# plotting a boxplot to compare the median and quartiles of glucose in the sample and population
par(mfrow = c(1,2))
boxplot(diabetes$Glucose, main = "Population Glucose Distribution", ylab = "Glucose")
boxplot(sample_data$Glucose, main = "Sample Glucose Distribution", ylab = "Glucose")