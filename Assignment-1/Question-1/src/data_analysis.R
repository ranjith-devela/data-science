#3. Data Analysis - 
sum <- summary(strength_clean_data)
capture.output(sum, "~/strength_summary.txt")

#Drawing a plot between age & grip strength
plot(strength_clean_data$Age,strength_clean_data$Grip.Strength,xlab="Age",ylab="GripStrength",main="Age vs GripStrength", col="black")