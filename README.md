# MechaCarChallenge
## Overview 
The purpose of this project was to analyze manufacturing data for AutosRU's newest prototype the MechaCar. The project is examined in terms of three deliverables. The first is a multi-variate regression that examined how miles per gallon is affected by several other variables. The second deliverable was two tables of summary statistics, and the third deliverable was conducting several t-tests to determine the relationship between the sample and population means. Finally this project concludes with insights on possible statistical analysis that could be useful for AutosRU's team to compare the MechaCar to the cars of competitors. 

## Deliverable One - Linear Regression to Predict MPG

![regression](https://github.com/kaileyosha/MechaCarChallenge/blob/011aec7dff75a0ca05e975a171b829868b5b34e6/MechaCarChallenge/Images/regression.png)

Above is the output from a multi-variate regression that explored the relationship between miles per gallon (mpg) and other variables including the length, weight, spoiler angle, ground clearance, awd (all wheel drive) for each vehicle. The model shows an adjusted r-squared value of 0.6825 which is an indicator of correlation (though high-level correlation usually comes at an adjusted r-squared of 0.7 or above). The r-squared value itself is 0.7149, which tells us that roughly 71.5% of the variablilty in miles per gallon can be explained by the other variables in the model. The intercept of the model is shown to be statistically significant but less than 0 as it is negative. Vehicle length and ground clearance are also shown to have statistical significance based on the 0.05 metric, and while miniscule they do have a positive effect on the mpg. This means that for increases in vehicle lenghth and ground clearance, the miles per gallon increase by their respective coefficients times the vehicle length or ground clearance. The weight of the vehicle could have a statistically significant impact on mpg if you were to solely look at the 0.1 p-value. 

The slope of this linear model is not considered to be zero, as we can see that the intercept has a p-value of less than 0.05 (and 0.001) which means we reject the null hypothesis and conclude our slope is different from zero. This linear model is only somewhat effective at predicting the mpg for MechaCars, as only three of the variables have statistical significance in the model. I would recommend examining other aspects of the MechaCars and running another linear regressionwith these new variables to be sure AutosRU's has the best model possible for prediction. 

## Deliverable Two - Summary Statistics on Suspension Coils

This deliverable required the creation of two data tables. The first table was the summary statistics of the entire dataset's PSI. The second was summary statistics of the data grouped by the manufacturing lot. The first table can be seen below. 

![table of summary statistics](https://github.com/kaileyosha/MechaCarChallenge/blob/eb03981109b853c45d65c03ac66df3bd0eb81ed3/MechaCarChallenge/Images/table_summary.png)

This table shows that the mean PSI across the entire set is 1498.78, and that the variance is 62.29 which falls in compliance with the specifications that dictate variance for the MechaCar not be greater than 100. The mean tells us the average pressure per square inch in the suspension coils of the MechaCar, which is approximately 1500 PSI. The table below shows these same statistics with the data grouped by manufacturing lot.

![table for manufacturing lot 1 summary statistics](

