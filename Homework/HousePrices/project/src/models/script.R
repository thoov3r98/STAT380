trainingdata <- read.csv('TrainingData')
testingdata <- read.csv('Stat_380_test2022.csv')

cor(trainingdata[sapply(trainingdata,is.numeric)])

model = lm(SalePrice ~ OverallQual + YearBuilt + TotalBsmtSF + GrLivArea, data = trainingdata)

summary(model)

linear_prediction <- predict(model, testingdata)
linear_prediction <- data.frame( Id = testingdata$Id, SalePrice = linear_prediction)

#To verify it worked, look at the top rows of the two prediction data sets.
head(linear_prediction)

write.csv(linear_prediction, 'DTprediction')
