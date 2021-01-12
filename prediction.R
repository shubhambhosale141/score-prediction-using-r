
#Author:"Shubham Bhosale"
#title: "Prediction Using Supervised ML"
#task: "What will be the predicted scores if student studies for 9.25 hours/day"
#data : "http://bit.ly/w-data"
#output: html_notebook

# Importing all required libraries


library(tidyverse)



# Reading data from .CSV file 

url<-"http://bit.ly/w-data"
top<-read.csv(url)
view(top)



summary(top)


#plotting Hours vs Percentage graph

plot(Scores~Hours,data = top)



#plotting Regression line

linearmodel<-lm(Scores~Hours,data=top)
plot(Scores~Hours,data=top)
abline(linearmodel)


#model calculation

summary(linearmodel)



linearmodel



predicted_score<-9.776*9.25 + 2.484


#prediction

pred<-predict(linearmodel,top)
pred



cat("The predicted score of person with study hours of 9.25 hrs is:",predicted_score)





