#Challenge 16
#Part 1: Linear Regression to Predict MPG

#Use the library() function
library(tidyverse)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar <- read.csv("MechaCar_mpg.csv",check.names = F, stringsAsFactors = F)

#Perform linear regression using to predict mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +
     AWD, data = MechaCar)

#determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +
             AWD, data = MechaCar))


#Part 2: Create Visualizations for the Trip Analysis

#import and read in the Suspension_Coil.csv file as a table
suspension_coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Write an RScript that creates a total_summary dataframe
Total_summary <- suspension_coil %>% summarize(Mu_psi = mean(PSI),
                           Median_psi = median(PSI),
                           Var_psi = var(PSI),
                           Stdv_psi = sd(PSI),
                           Number_coils=n(),
                           .groups = "keep")

# Write an RScript that creates a lot_summary  to group each manufacturing lot
Lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mu_psi = mean(PSI),
                                                                             Median_psi = median(PSI),
                                                                             Var_psi = var(PSI),
                                                                             Stdv_psi = sd(PSI),
                                                                             Number_coils=n(),
                                                                             .groups = "keep")






