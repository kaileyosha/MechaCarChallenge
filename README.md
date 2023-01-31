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

![table for manufacturing lot 1 summary statistics](https://github.com/kaileyosha/MechaCarChallenge/blob/98bf0108ceeca18ea678194e56d22ba44d522cd8/MechaCarChallenge/Images/lot_summary.png)

The most important thing to notice is that manufacturing lots one and two both fall well within the specifications given for the variance of the MechaCar while lot three does not. Lot three has a variance of approximately 170.3 which is well over the given specifications, which leads to the conclusion that manufacturing lot three could be a source of many of the issues in production AutosRU'S MechaCar prototypes. The recommendation here would be for oversight from upper management on manufacturing lot three's production center to ensure the same standards are being met. Manufacturing lot three also has the highest standard deviation and a lower mean than the other two lots. 

## Deliverable Three - T-Tests on Suspension Coils 

The purpose of this deliverable was to compare four sample means to the population mean via t-tests. The first sample was randomly generated across all lots, while the other three were samples based solely on the manufacturing lot. The null hypothesis for the t-tests would be that the means of our samples are not significantly different from the population mean, the alternative hypothesis being that the sample means are significantly different from the population mean. In this case, significance refers to statistical significance by having p-values less than the 0.05 confidence interval. Below is the table for the first t-test which examined a general sample in comparison to the population.

![t-test across all lots versus the population mean](https://github.com/kaileyosha/MechaCarChallenge/blob/557433579a48e2710b59e54aa4a59201af809987/MechaCarChallenge/Images/ttest_general.png)

In looking at the above table, you should notice the p-value which is 0.8649. Seeing as this value is well over the 0.05 threshold, we are forced to accept the null hypothesis and conclude that the difference between the sample mean and population mean is zero. 

![t-test for manufacturing lot 1](https://github.com/kaileyosha/MechaCarChallenge/blob/557433579a48e2710b59e54aa4a59201af809987/MechaCarChallenge/Images/ttest_lot1.png)

This table shows the t-test based on a sample of data for only manufacturing lot one. It has the same null hypothesis, that the difference between the sample and population means are zero, and we can see that our p-value is well under the 0.05 threshold. With this in mind, we can reject the null hypothesis and conclude that the sample mean for manufacturing lot one is different from that of the population. 

![t-test for manufacturing lot 2](https://github.com/kaileyosha/MechaCarChallenge/blob/557433579a48e2710b59e54aa4a59201af809987/MechaCarChallenge/Images/ttest_lot2.png)

The above is the output of a t-test for manufacturing lot two. Like manufacturing lot one, the p-value on this t-test is substantially smaller than the 0.05 threshold. This means that, like manufacturing lot one, we can reject the null hypothesis and conclude that manufacturing lot two has a sample mean that is different from the population. 

![t-test for manufacturing lot 3](https://github.com/kaileyosha/MechaCarChallenge/blob/557433579a48e2710b59e54aa4a59201af809987/MechaCarChallenge/Images/ttest_lot3.png)

The final t-test for this deliverable was conducted on manufacturing lot three, the output of which is shown above. The p-value for this t-test is 0.1549, a value well over the 0.05 threshold, so we must accept the null hypothesis. This allows us to conclude that manufacturing lot three has a mean that shows no statistically significant difference from teh population mean. 


## Deliverable Four - Study Design : MechaCar vs Competition 

In an effort to remain in front of the competition, it is important that AutosRU has clear and relevant data on the MechaCar's operation versus that of its competitors. Most generally, fuel efficiency will be a large part of consumer decisions on which car they purchase, especially considering current trends in gas prices. AutosRU should do an analysis of fuel efficiency across various terrains (for example highways, cities, rural) for the MechaCar and its competitors. Other relevant variables besides the terrain could be the size of the car (length, weight), and tire pressure. Once all of this data has been collected for all cars being examined, a linear regression model should be able to predict the fuel efficiency for the MechaCar and its competitors. The null hypothesis would be that there is no significant difference in fuel efficiency across the different vehicles. The alternative hypothesis for this study would be that there is a significant difference in fuel efficiency across the different vehicles. The goal is for the MechaCar to be more fuel efficient, thus making consumers feel they are getting a significant return on their investment into the MechaCar. Other avenues worth studying could be the maintenance costs, and safety ratings for the MechaCar versus the competition. 

