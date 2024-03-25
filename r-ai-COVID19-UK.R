#create data frame
df <- data.frame(cases=c(1166, 1217, 638, 247, 302, 289, 431, 662), 
                 hospitalizations=c(67, 66, 39, 19, 22, 20, 28, 42), 
                 deaths=c(2, 3, 1, 1, 2, 2, 6, 7))
#view data frame
df

#fit multiple linear regression model
fit <- lm(deaths ~ cases + hospitalizations, data=df)

#view summary of model
summary(fit)

#define new observation
newdata = data.frame(cases=1400, hospitalizations=102)

#use model to predict deaths value
predict(fit, newdata)

#define new data frame of three weeks
newdata = data.frame(cases=c(1400, 1600, 2250),
                     hospitalizations=c(102, 122, 165))

#view data frame
newdata

newdata = data.frame(cases=1400, hospitalizations=102)
predict(fit, newdata)


  