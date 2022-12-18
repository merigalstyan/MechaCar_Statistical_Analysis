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



