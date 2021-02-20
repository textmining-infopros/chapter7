#Load libraries
library(syuzhet)
library(tm)
library(twitteR)

#Load dataset
data<- read.csv("https://raw.githubusercontent.com/textmining-utl/chapter7/master/data.csv")

#syuzhet package works only on vectors. So, the data was converted to a vector
vector <- as.vector(t(data))

#Avoid error related to tolower() invalid multibyte string 
dat[,sapply(dat,is.character)] <- sapply(
  dat[,sapply(dat,is.character)],
  iconv,"WINDOWS-1252","UTF-8")

#Sentiment analysis
emotion.data <- get_nrc_sentiment(vector)
emotion.data2 <- cbind(data, emotion.data)
sentiment.score <- get_sentiment(vector)
sentiment.data = cbind(sentiment.score, emotion.data2)

#Getting positive, negative, and neutral reviews with associated scores
positive.reviews <- sentiment.data[which(sentiment.data$sentiment.score > 0),]
write.csv(positive.reviews, "positive.reviews.csv")

negative.reviews <- sentiment.data[which(sentiment.data$sentiment.score < 0),]
write.csv(negative.reviews, "negative.reviews.csv")

neutral.reviews <- sentiment.data[which(sentiment.data$sentiment.score == 0),]
write.csv(neutral.reviews, "neutral.reviews.csv")

#Plot1: Percentage-Based Means
percent_vals <- get_percentage_values(sentiment.score, bins=20)

plot(percent_vals,
     type="l",
     main="Amazon Book Reviews using Percentage-Based Means",
     xlab="Narrative Time",
     ylab="Emotional Valence",
     col="red")

#Plot2: Discrete Cosine Transformation (DCT)
dct_values <- get_dct_transform(sentiment.score,
                                low_pass_size = 5,
                                x_reverse_len = 100,
                                scale_vals = F,
                                scale_range = T)

plot(dct_values,
     type ="l",
     main ="Amazon Book Reviews using Transformed Values",
     xlab = "Narrative Time",
     ylab = "Emotional Valence",
     col = "red")

#Plot3: Emotions Graph
barplot(sort(colSums(prop.table(emotion.data[, 1:8]))),
        horiz=TRUE,
        cex.names=0.7,
        las=1,
        main="Emotions in Amazon Book Reviews",
        xlab = "Percentage")
     
