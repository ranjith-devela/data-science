data <- read.csv("C:/Users/shrav/Downloads/diabetes.csv")

# Step 2: Calculate statistics for the population
bp_mean <- mean(data$BloodPressure)
bp_std <- sd(data$BloodPressure)
bp_percentile <- quantile(data$BloodPressure, c(25, 50, 75))

cat("Population Statistics:\n")
cat(sprintf("Mean: %.2f\n", bp_mean))
cat(sprintf("Standard Deviation: %.2f\n", bp_std))
cat("Percentiles: ")
cat(bp_percentile)

# Step 3: Create 500 samples of size 150 from the population using bootstrap sampling
num_samples <- 500
sample_size <- 150
bp_means <- numeric(num_samples)

for (i in 1:num_samples) {
  sample <- sample(data$BloodPressure, size=sample_size, replace=TRUE)
  bp_means[i] <- mean(sample)
}

# Step 4: Calculate statistics for each sample
bp_means_mean <- mean(bp_means)
bp_means_std <- sd(bp_means)
bp_means_percentile <- quantile(bp_means, c(25, 50, 75))

cat("\nBootstrap Sample Statistics:\n")
cat(sprintf("Mean: %.2f\n", bp_means_mean))
cat(sprintf("Standard Deviation: %.2f\n", bp_means_std))
cat("Percentiles: ")
cat(bp_means_percentile)

# Step 5: Compare statistics using charts
par(mfrow=c(1,2))
# Histogram of BloodPressure in the population
hist(data$BloodPressure, breaks=20, main="Population BloodPressure", xlab="BloodPressure", ylab="Frequency", col="lightblue", border="black")
abline(v=bp_mean, col="red", lty=2, lwd=2, label="Population Mean")
legend("topright", legend="Population Mean", col="red", lty=2, lwd=2)

# Histogram of mean BloodPressure in 500 samples
hist(bp_means, breaks=20, main="Bootstrap Sample Mean of BloodPressure", xlab="Mean BloodPressure", ylab="Frequency", col="lightgreen", border="black")
abline(v=bp_means_mean, col="red", lty=2, lwd=2, label="Bootstrap Mean")
abline(v=bp_mean, col="green", lty=2, lwd=2, label="Population Mean")
legend("topright", legend=c("Bootstrap Mean", "Population Mean"), col=c("red", "green"), lty=2, lwd=2)

