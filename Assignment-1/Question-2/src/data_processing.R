#Data processing: Removing students data who has free/reduced lunch
students_clean_data <- students_raw[grepl('standard',students_raw$lunch),]
write.csv(students_clean_data, "~students_clean_data")