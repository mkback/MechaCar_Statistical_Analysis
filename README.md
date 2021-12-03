# MechaCar Statistical Analysis

## Deliverable 1

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
##### - Vehicle length and ground clearance have the most amound of random because the p-value is very close to 0. This means we can reject the null. The three other variables have a p-value greater than .05 so we cannot reject the null so we cannot rule out the randomness. 

### Is the slope of the linear model considered to be zero? Why or why not?

##### - The slope of this linear model is not considered zero because the R value is .71. 

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

##### - The R-squared value of this linear regression is .7149 meaning about 71% of the time the model will predict the mpg correctly. This is a strong prediction, but there are probably more factors that can increase the effectiveness. 

## Deliverable 2

### Summary Statistics on Suspension Coils

#### See below for the total summary across all cars. There are 150 cars with a mean and median PSI is close to 1500. 
#![Alt Image Text]( https://github.com/mkback/MechaCar_Statistical_Analysis/blob/main/Images/Total_Summary.png)
#### See below for a similar summary, but grouped by lot. There are 3 lots, each with 50 cars. These also have a mean and median PSI close to 1500, but lot 3 has a much larger variance and standard deviation.
#![Alt Image Text](https://github.com/mkback/MechaCar_Statistical_Analysis/blob/main/Images/Lot_summary.png) 
#### MechaCar has made specifications the variance of the suspension coils must not exceed 100 PSI. At a total the variance is only 62 PSI and meets this criteria, but unfortunately when we look by lot, Lot 3 has a variance of 170 PSI and does not meet this criteria. 

## Deliverable 3
### T-Tests on Suspension Coils

#### Lots 1 & 2 have high p-values so we cannot reject the null, meaning the means of these lots are not different from the mean 1500. Lot 3 however has a p-value lower than .05 which means we can reject the null and the mean of this lot is different from the mean 1500. See below for all t.tests: 

### All lots: 
#![Alt Image Text](https://github.com/mkback/MechaCar_Statistical_Analysis/blob/main/Images/one_sample_t.test.png) 
### Lot 1: 
#![Alt Image Text](https://github.com/mkback/MechaCar_Statistical_Analysis/blob/main/Images/Lot1_t.test.png)
### Lot 2: 
#![Alt Image Text](https://github.com/mkback/MechaCar_Statistical_Analysis/blob/main/Images/Lot2_t.test.png)
### Lot 3#: 
#![Alt Image Text](https://github.com/mkback/MechaCar_Statistical_Analysis/blob/main/Images/Lot3_t.test.png)

## Deliverable 4