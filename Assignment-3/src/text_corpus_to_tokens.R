# install and load the 'tokenizers' package if necessary
if (!require("tokenizers")) {
  install.packages("tokenizers")
  library("tokenizers")
}
data <- read_csv("/Corona_NLP_test.csv")

# tokenize the 'OriginalTweet' column into individual words
tokens <- tokenize_words(data$OriginalTweet)

# print the first 10 tokens to check the output
print(tokens[1:10])