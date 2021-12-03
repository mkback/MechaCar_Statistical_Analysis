library(tidyverse)

# Read in the CSV file. 
MechaCar <- read.csv(file="Resources/MechaCar_mpg.csv")

# Step 5 preform a linear reg 
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= MechaCar)

#Step 6 Summarize linear Reg
summary(reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= MechaCar))


#Deliverable Part 2 
SusCoil <- read.csv(file='./Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

summary(SusCoil$PSI)
total_summary <- SusCoil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 
lot_summary <- SusCoil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep')

#Deliverable Part 3
t.test(SusCoil$PSI, mu=1500)
# Lot 1
t.test(subset(SusCoil,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
# Lot 2
t.test(subset(SusCoil,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
# Lot 3
t.test(subset(SusCoil,Manufacturing_Lot=="Lot3")$PSI,mu=1500)

#Deliverable Part 4
