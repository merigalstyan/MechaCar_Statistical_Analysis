# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

A few weeks after starting his new role, Jeremy is approached by upper management to review the production data for insights that may help the manufacturing team from suffering from production troubles. Jeremy is tasked to perform ***multiple linear regression*** analysis to identify which variables in the dataset predict **the mpg of MechaCar prototypes**.

Jeremy starts by downloading the provided data **MechaCar_mpg.csv** and creating a new R RScript in his R source pane. He, then, proceeds to take the steps for linear regression by using the **lm()**, passing all given variables and connecting the function with the given data. 

Here are the results of the analysis:

<img width="552" alt="Screenshot 2022-12-18 at 1 50 25 PM" src="https://user-images.githubusercontent.com/111609994/208321606-d879f838-1ffa-4638-bc3b-9eee89784b26.png">

The first question Jeremy asks is which variables provided a non-random amount of variance to the mpg values in the dataset. By looking a the ***P-values*** for **vehicle length** and **ground clearance** (2.60e-12, 5.21e-08 respectively), Jeremy quickly realizes that only these two variables are statistically significant and likely to provide non-random amount of variance to the mpg values thus, having a significant impact on the mpg. 

The overall **P-value** of the model is ***5.35e-11***. This is smaller than the significance level of 0.05 and thus calls to **reject the null hypothesis** which assumes that the slope is **not** zero. 

The **R-squared** value in its turn is **0.7149** and assumes that around **72%** of **MPG** predictions will be determined by this model. Jeremy then assumes that this model does effectively predict mpg of MechaCar prototypes. 

