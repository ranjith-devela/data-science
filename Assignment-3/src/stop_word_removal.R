data <- read_csv("/Corona_NLP_test.csv")

# Remove stop words
data_clean <- lapply(data$OriginalTweet, function(x) {
  # Split the text into words
  words <- strsplit(x, " ")[[1]]
  # Remove the stop word "the" (in lowercase)
  words_clean <- words[words != "I"]
  # Join the remaining words back into a string
  text_clean <- paste(words_clean, collapse = " ")
  # Return the cleaned text
  return(text_clean)
})

# Replace the original text with the cleaned text
data$CleanedText <- data_clean

# Print the first 10 rows of cleaned data
head(data, 10)