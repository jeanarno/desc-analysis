# What am I doing?
In this repository, I conduct text analysis on customer reviews on 4 ConAgra Brands which are: Blue Bonnet, Earth Balance, Parkay, and Smart Balance.

# What is the goal?
The goal is to extract the top 5 keywords used often used by customers to describe ConAgra products. I would like to see if there are any areas of concern product-wise. While doing so, we can also see if the reviews are positive or negative at a glance

# How do I proceed?
This task is divided into 4 parts:
1. Read the file (in CSV) into R and define the vector source
2. Conduct text pre-processing. This is where we:
   - Define all stopwords
   - Clean text by removing numbers and punctuations, and make all text lowercase
   - Generate the document-term matrix
   - Remove terms occurring in less than 1% of the documents
3. Find frequently used words
4 Generate a bar graph to show the top 5 terms of the corpus

**Note: The above procedures are commented in my code as well. The .R file shows it all step by step.**

# What did I learn?
Overall, I found no major area of concern for the ConAgra brands. The majority of the customer feedback is positive. From the analysis, I found that customers discuss the "flavor" of the Earth Balance, Parkay, and Smart Balance (butter/spread) in most cases. ConAgra brands appeal to the taste, as shown on the bar charts.
