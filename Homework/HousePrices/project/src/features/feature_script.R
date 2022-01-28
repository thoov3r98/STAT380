trainingdata <- read.csv('Stat_380_train2022.csv')
editedTrainingData = trainingdata[c('Id', 'SalePrice', 'OverallQual', 'YearBuilt', 'TotalBsmtSF', 'GrLivArea')]
write.csv(editedTrainingData, 'TrainingData')
