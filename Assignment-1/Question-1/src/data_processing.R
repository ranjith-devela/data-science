#2. Data processing - Cleaning the data where Frailty is yes
strength_clean_data <- strength_raw_data[!grepl('Y', strength_data$Frailty),]

#Writing the clean data to disk
write.csv(strength_clean_data, "~/strength_clean_data.csv")