# What is the motivation?
In this repository, the goal is to demonstrate my ability to use R to extract the most frequently used words out of customer reviews on 4 ConAgra Brands which are: Blue Bonnet, Earth Balance, Parkay, and Smart Balance.

# What is the goal?
I am extracting the top 5 keywords often used by customers to describe each ConAgra product. While doing so, I can also see if the reviews are positive or negative at a glance.

# How do I proceed?
This task is divided into 4 parts:
1. Read the file (in CSV) into R and define the vector source
2. Conduct text pre-processing. This is where I:
   - Define all stopwords
   - Clean text by removing numbers and punctuations, and make all text lowercase
   - Generate the document-term matrix
   - Remove terms occurring in less than 1% of the documents
3. Find frequently used words
4. Generate a bar graph to show the top 5 terms of the corpus

**Note: The above procedures are commented in my code as well. The .R file shows it all step by step.**

# What did I learn?
Overall, I found no major area of concern for the ConAgra brands. The majority of the customer feedback is positive. From the analysis, I found that customers often discuss the "flavor" or "taste" of each ConAgra product in most cases, which they adore. This is great news for the company!
