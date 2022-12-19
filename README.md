# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

A few weeks after starting his new role, Jeremy is approached by upper management to review the production data for insights that may help the manufacturing team from suffering from production troubles. Jeremy is tasked to perform ***multiple linear regression*** analysis to identify which variables in the dataset predict **the mpg of MechaCar prototypes**.

Jeremy starts by downloading the provided data **MechaCar_mpg.csv** and creating a new R RScript in his R source pane. He, then, proceeds to take the steps for linear regression by using the **lm()**, passing all given variables and connecting the function with the given data. 

Here are the results of the analysis:

<img width="552" alt="Screenshot 2022-12-18 at 1 50 25 PM" src="https://user-images.githubusercontent.com/111609994/208321606-d879f838-1ffa-4638-bc3b-9eee89784b26.png">

The first question Jeremy asks is which variables provided a non-random amount of variance to the mpg values in the dataset. By looking a the ***P-values*** for **vehicle length** and **ground clearance** (2.60e-12, 5.21e-08 respectively), Jeremy quickly realizes that only these two variables are statistically significant and likely to provide non-random amount of variance to the mpg values thus, having a significant impact on the mpg. 

The overall **P-value** of the model is ***5.35e-11***. This is smaller than the significance level of 0.05 and thus calls to **reject the null hypothesis** which assumes that the slope is **not** zero. 

The **R-squared** value in its turn is **0.7149** and assumes that around **72%** of **MPG** predictions will be determined by this model. Jeremy then assumes that this model does effectively predict mpg of MechaCar prototypes. 

## Summary Statistics on Suspension Coils

Continuing his analytics, Jeremy proceeds to retrieve Summary Statistics on suspension coils. **The purpose to get the summary statistics is to see if the design specifications for the MechaCar suspension coils fall within the variance of 100 pounds per square inch.***

Reading the provided **suspension_coils.csv** data, Jeremy calls **summarize** and **group_by** methods to create **lot_summary** and **total_summary**. These summary tables include the mean, median, variance, and standard deviation of the suspension coil’s PSI column. 

The total summary of the mean, median, variance, and standard deviation of the suspension coil’s PSI column:


<img width="488" alt="Screenshot 2022-12-18 at 2 46 21 PM" src="https://user-images.githubusercontent.com/111609994/208323341-e99ee4ff-3756-4bec-9214-c4416bbeab45.png">

The lot summary grouped by the mean, median, variance, and standard deviation of the suspension coil’s PSI:

<img width="542" alt="Screenshot 2022-12-18 at 2 46 40 PM" src="https://user-images.githubusercontent.com/111609994/208323363-d80abf89-864b-4d6d-bdf0-c3022d5d1da4.png">

From the total summary table Jeremy concludes that the variance of the coils of **62.29356** by the entire population falls within the normal limits for 100 pounds per square inch. The current manufacturing data meets this design specification for all manufacturing lots in total.

***However,*** looking at each lot individually, Jeremy sees that only **Lot1** and **Lot2** meet the design specifications by the variance of **0.98** and **7.47** respectively. **Lot 3** exceeds the specifications with the variance of **170.29**.

## T-Tests on Suspension Coils

Next step for Jeremy is to perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

By using the **suspension_coil.csv** data, which was already read into the R_script, Jeremy conducts the first ***t.test*** by inputting the table's **PSI** column and setting the mean equal to 1,500. 

<img width="478" alt="Screenshot 2022-12-18 at 3 27 00 PM" src="https://user-images.githubusercontent.com/111609994/208325023-efc1b455-bb7d-4277-b364-fe1c96240880.png">

By accounting the total population in this t.test, the mean of x appears to be 1498.78  and the **p-value of 0.06028 is greater than the significane level of 0.05**. This is not sufficient evidence and thus Jeremy **failes to reject the null hypothesis**, meaning that the mean of all manufacturing lots is statistically similar to the mean of 1,500.

However, looking at each lot individually, Jeremy notices something different:

<img width="487" alt="Screenshot 2022-12-18 at 3 32 05 PM" src="https://user-images.githubusercontent.com/111609994/208325240-dcb95da1-d380-430f-b6e7-a3805c33ef27.png">

<img width="466" alt="Screenshot 2022-12-18 at 3 32 10 PM" src="https://user-images.githubusercontent.com/111609994/208325286-bc7696f1-c931-485b-a2a6-6922b4e434b3.png">


*Both* ***Lot 1*** and ***Lot 2*** appear to have a mean of 1,500 and higher p-value than the significance level of 0.05. With P-values of 1 and 0.61 Jeremy simply can't see any statistical differences between the sample means the the population mean of 1,500. Thus, he failes to reject the null hypothesis.

**But when Jeremy looks at the next t.test for Lot 3, he notices that Lot 3 has smaller p-value of 0.04168 and a mean of 1,496.14.***

<img width="468" alt="Screenshot 2022-12-18 at 3 32 15 PM" src="https://user-images.githubusercontent.com/111609994/208325427-d7c59179-1433-43e4-96ff-a2d397945314.png">

Jeremy proceeds to reject the null hypothesis for Lot 3. 

## Study Design: MechaCar vs Competition

### MechaCar performance against the competition

In order to conduct a study design between MechaCar and its competitors, Jeremy would find metrics based on the null and alternative hypothesis. Additional data would be required to conduct such a study. In this case, Jeremy could look at MechaCar and its competitors, analyze several performance factors that are important for the consumers and decide if the car in MechaCars are priced correctly and better based on its performance and compared to its competitors.

The study design would require a significant amount of data from competitors. Required data would include:
* The competitors and their cars(models)
* The main models and competitors that MechaCar will be competing with
* The most important factors regarding the cars.

### ***Metrics***

** Independent Variables **

* Safety Rating
* Miles Per Gallon (mpg)
* Selling Price
* **Costs**
* Horse Power
* Engine

### ***Hypothesis***

***NULL***: MechaCars has a pricing advantage in the market (compared with competitors) based on consumer important performance factors
***A***: MechaCars doesn't have a pricing advantage in the market based on consumer important performance factors.

