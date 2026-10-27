#Author:Cinthia Gomez,Date 10/8/2026,Purpose:set up Random Forest
install.packages("caret", dependecies = TRUE)
install.package("randomForest")
#Load the packages
library(caret)
library(randomForest)
#Upload a dummy dataset for training
dataset <- iris 
#Split the dataset into training and testing groups
set.seed(7)
validation_index <-createDataPartition(dataset$Species,p=0.80,list=FALSE)

validation <-dataset[-validation_index,]
dataset<- dataset[validation_index,]

#Setting a variable for Accuracy measure
control <-trainControl(method="cv", number=10)
metric<-"Accuracy"
#Train the model using Random Forest
set.seed(7)
fit.rf<-train (Species~., data=dataset, method="rf", metric=metric, trControl=control)

#Prediction on the validation dataset
prediction <-predict(fit.rf, validation)
confusionMatrix(prediction, validation$Species)

