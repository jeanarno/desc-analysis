########----------- ConAgra Product Reviews - Text Analysis ----------- ########
# Clears all
rm(list=ls())
cat("\014")

# Install libraries and set my working directory
# install.packages("tm") # one time installation
# install.packages("e1071") # one time installation
# install.packages("SnowballC") # one time installation
# install.packages("ggplot2") # one time installation
# install.packages("dplyr") # one time installation
library(tm)
library(e1071)
library(SnowballC)
library(ggplot2)
library(dplyr)
setwd("~/Desktop/conagra-analysis")

############################# Blue Bonnet Analysis #############################
# Part 1: Read the csv and define the vector source
reviews <- read.csv("blue-bonnet - reviews.csv", stringsAsFactors = FALSE)
names(reviews)
mycorp1 <- Corpus(VectorSource(reviews$reviews))

# Part 2: Conduct text pre-processing
# defines my stopwords
mystop <- c("also", "get", "make", "can", "im", "i", "it", "blue", "bonnet", 
            "spread", "use", "and", "the", "this", "for", "butter")
# cleans text
dtm.control <- list(tolower=T, removePunctuation=T, removeNumbers=T, 
stopwords = c(stopwords("english"), mystop), stripWhitespace=T, stemming=T)
# generates document-term matrix
dtm.full <- DocumentTermMatrix(mycorp1, control=dtm.control)  
inspect(dtm.full)
# removes terms occurring in less than 1% of the documents
dtm <- removeSparseTerms(dtm.full, 0.99)  
dim(dtm.full)
dim(dtm)

# Part 3: Find frequently used words
freq <- colSums( as.matrix(dtm))
# sort frequency
freq.sorted <- sort(freq, decreasing = TRUE)
top_5 <- freq.sorted[1:5]; top_5  # the five most frequently terms of the corpus

# Part 4: Generate bar chart
barplot(
  top_5 , 
  main="Customers Review on the Blue Bonnet brand",
  xlab = "Word",
  ylab = "Count",
  names=row.names(top_5),
  col=c("dark blue"),
  beside=TRUE ,
  ylim= range(0 , 40) ,
)

############################ Earth Balance Analysis ############################
# Clears previous work
rm(list=ls())
cat("\014")

# Part 1: Read the csv and define the vector source
reviews2 <- read.csv("earth-balance - reviews.csv", stringsAsFactors = FALSE)
names(reviews2)
mycorp2 <- Corpus(VectorSource(reviews2$reviews))

# Part 2: Conduct text pre-processing
# defines my stopwords
mystop2 <- c("also", "get","like", "make", "can", "im", "i", 
"butter", "it", "earth", "balance", "spread", "use")
# cleans text
dtm.control <- list(tolower=T, removePunctuation=T, removeNumbers=T, 
stopwords = c(stopwords("english"), mystop2), stripWhitespace=T, stemming=T)
# generates document-term matrix
dtm.full <- DocumentTermMatrix(mycorp2, control=dtm.control)  
inspect(dtm.full)
# removes terms occurring in less than 1% of the documents
dtm <- removeSparseTerms(dtm.full, 0.99)  
dim(dtm.full)
dim(dtm)

# Part 3: Find frequently used words
freq <- colSums( as.matrix(dtm))
# sort frequency
freq.sorted <- sort(freq, decreasing = TRUE)
top_5 <- freq.sorted[1:5]; top_5  # the five most frequently terms of the corpus

# Part 4: Generate bar chart
barplot(
  top_5 , 
  main="Customers Review on the Earth Balance brand",
  xlab = "Word",
  ylab = "Count",
  names=row.names(top_5),
  col=c("dark green"),
  beside=TRUE ,
  ylim= range(0 , 40) ,
)

################################ Parkay Analysis ###############################
# Clears previous work
rm(list=ls())
cat("\014")

# Part 1: Read the csv and define the vector source
reviews3 <- read.csv("parkay - reviews.csv", stringsAsFactors = FALSE)
names(reviews3)
mycorp3 <- Corpus(VectorSource(reviews3$reviews))

# Part 2: Conduct text pre-processing
# defines my stopwords
mystop3 <- c("also", "get","like", "make", "can", "im", "i", 
"margarine", "it", "parkay", "spread", "use", "butter", "just")
# cleans text
dtm.control <- list(tolower=T, removePunctuation=T, removeNumbers=T, 
stopwords = c(stopwords("english"), mystop3), stripWhitespace=T, stemming=T)
# generates document-term matrix
dtm.full <- DocumentTermMatrix(mycorp3, control=dtm.control)  
inspect(dtm.full)
# removes terms occurring in less than 1% of the documents
dtm <- removeSparseTerms(dtm.full, 0.99)  
dim(dtm.full)
dim(dtm)

# Part 3: Find frequently used words
freq <- colSums( as.matrix(dtm))
# sort frequency
freq.sorted <- sort(freq, decreasing = TRUE)
top_5 <- freq.sorted[1:5]; top_5  # the five most frequently terms of the corpus

# Part 4: Generate bar chart
barplot(
  top_5 , 
  main="Customers Review on the Parkay brand",
  xlab = "Word",
  ylab = "Count",
  names=row.names(top_5),
  col=c("red"),
  beside=TRUE ,
  ylim= range(0 , 40) ,
)

############################# Smart Balance Analysis ###########################
# Clears previous work
rm(list=ls())
cat("\014")

# Part 1: Read the csv and define the vector source
reviews4 <- read.csv("smart-balance - reviews.csv", stringsAsFactors = FALSE)
names(reviews4)
mycorp4 <- Corpus(VectorSource(reviews4$reviews))

# Part 2: Conduct text pre-processing
# defines my stopwords
mystop4 <- c("also", "get","like", "make", "can", "im", "i", 
"butter", "it", "smart", "balance", "spread", "use")
# cleans text
dtm.control <- list(tolower=T, removePunctuation=T, removeNumbers=T, 
stopwords = c(stopwords("english"), mystop4), stripWhitespace=T, stemming=T)
# generates document-term matrix
dtm.full <- DocumentTermMatrix(mycorp4, control=dtm.control)  
inspect(dtm.full)
# removes terms occurring in less than 1% of the documents
dtm <- removeSparseTerms(dtm.full, 0.99)  
dim(dtm.full)
dim(dtm)

# Part 3: Find frequently used words
freq <- colSums( as.matrix(dtm))
# sort frequency
freq.sorted <- sort(freq, decreasing = TRUE)
top_5 <- freq.sorted[1:5]; top_5  # the five most frequently terms of the corpus

# Part 4: Generate bar chart
barplot(
  top_5 , 
  main="Customers Review on the Smart Balance brand",
  xlab = "Word",
  ylab = "Count",
  names=row.names(top_5),
  col=c("orange"),
  beside=TRUE ,
  ylim= range(0 , 40) ,
)
########------------------------------ END ---------------------------- ########
