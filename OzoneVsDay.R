#Author:Cinthia Gomez
#airquality assignment
#1.Clean the data
clean_airquality <- airquality[complete.cases(airquality), ]
#2.Plot the data as scatter plot
scatter.smooth(x=clean_airquality$Ozone,y=clean_airquality$Day,main="OzoneVsDay")
#3.Create a training dataset with a 50% split 
nrow(clean_airquality) 
#we have 111 rows in the clean dataset
training_dataset<-clean_airquality[1:55,]
test_dataset<-clean_airquality[56:111,]
#Creating regression model on ozone and day of airquality
regression_model<-lm(Ozone~Day,data=training_dataset)
#Predict the relationshop between ozone and day of the airquality on test data set using our generated regression model
prediction_result <-predict(regression_model,test_dataset)
#Results of prediction
actual_prediction_vaules<-data.frame(cbind(actuals=test_dataset$Ozone,predicteds=prediction_result))
actual_prediction_vaules
    actuals predicteds
89       82   35.18095
90       50   34.91597
91       64   34.65100
92       59   34.38602
93       39   42.33531
94        9   42.07033
95       16   41.80535
99      122   40.74545
100      89   40.48047
101     110   40.21550
104      44   39.42057
105      28   39.15559
106      65   38.89062
108      22   38.36066
109      59   38.09569
110      23   37.83071
111      31   37.56573
112      44   37.30076
113      21   37.03578
114       9   36.77081
116      45   36.24085
117     168   35.97588
118      73   35.71090
120      76   35.18095
121     118   34.91597
122      84   34.65100
123      85   34.38602
124      96   42.33531
125      78   42.07033
126      73   41.80535
127      91   41.54038
128      47   41.27540
129      32   41.01042
130      20   40.74545
131      23   40.48047
132      21   40.21550
133      24   39.95052
134      44   39.68554
135      21   39.42057
136      28   39.15559
137       9   38.89062
138      13   38.62564
139      46   38.36066
140      18   38.09569
141      13   37.83071
142      24   37.56573
143      16   37.30076
144      13   37.03578
145      23   36.77081
146      36   36.50583
147       7   36.24085
148      14   35.97588
149      30   35.71090
151      14   35.18095
152      18   34.91597
153      20   34.65100
