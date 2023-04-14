
# calculating the 98th percentile of BMI of the population and the sample
population_98_percentile_bmi <- quantile(diabetes$BMI, 0.98)
sample_98_percentile_bmi <- quantile(sample_data$BMI, 0.98)

print(population_98_percentile_bmi)
print(sample_98_percentile_bmi)

# plotting a histogram to compare the distribution of BMI in the sample and population
par(mfrow = c(1,2))
hist(diabetes$BMI, main = "Population BMI Distribution", xlab = "BMI")
hist(sample_data$BMI, main = "Sample BMI Distribution", xlab = "BMI")

# plotting a boxplot to compare the median and quartiles of BMI in the sample and population
par(mfrow = c(1,2))
boxplot(diabetes$BMI, main = "Population BMI Distribution", ylab = "BMI")
boxplot(sample_data$BMI, main = "Sample BMI Distribution", ylab = "BMI")
