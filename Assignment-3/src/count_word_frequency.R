data <- read_csv("/Corona_NLP_test.csv")


# Convert to lower case
data$OriginalTweet <- tolower(data$OriginalTweet)

# Remove punctuation
data$OriginalTweet <- gsub("[[:punct:]]", "", data$OriginalTweet)

# Split text into words
words <- unlist(strsplit(data$OriginalTweet, "\\W+"))

# Create a word frequency table
freq_table <- table(words)
print(freq_table)