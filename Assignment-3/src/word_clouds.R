data <- read_csv("/Corona_NLP_test.csv")

# Load required packages
library(tm)
library(wordcloud)
data <- read_csv("C:/Users/shrav/Desktop/pds/Corona_NLP_test.csv")
# Create a corpus of text
corpus <- Corpus(VectorSource(data$OriginalTweet))

# Remove punctuation, numbers, and stopwords
corpus_clean <- tm_map(corpus, removePunctuation)
corpus_clean <- tm_map(corpus_clean, removeNumbers)
corpus_clean <- tm_map(corpus_clean, removeWords, stopwords("english"))

# Convert to lowercase
corpus_clean <- tm_map(corpus_clean, content_transformer(tolower))

# Create a term-document matrix
tdm <- TermDocumentMatrix(corpus_clean)

# Convert the term-document matrix to a matrix
m <- as.matrix(tdm)

# Calculate word frequencies
word_freq <- sort(rowSums(m), decreasing = TRUE)

# Create a word cloud
wordcloud(words = names(word_freq), freq = word_freq, min.freq = 5, 
          max.words = 100, random.order = FALSE, rot.per = 0.35, 
          colors = brewer.pal(8, "Dark2"))