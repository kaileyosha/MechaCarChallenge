#Deliverable One
MechaCar_mpg <- read_csv(file = "Desktop/Bootussy/MechaCarChallenge/
                         Starter_Code (7)/MechaCar_mpg.csv")

#run a linear regression 
mecha_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle 
                       + ground_clearance + AWD, data = MechaCar_mpg)
#get summary statistics on the regression
summary(mecha_regression) 
#Summarize the data

#Deliverable Two 
library (dplyr)
Suspension_Coil <- read_csv(file = "Desktop/Bootussy/MechaCarChallenge
                            /Starter_Code (7)/Suspension_Coil.csv") 

#making total_summary table based on summary statistics 
total_summary <- summarize(Suspension_Coil,Mean = mean(PSI),
                           Median = median(PSI),  Variance =var(PSI), SD =sd(PSI))

#making lot_summary which has summary statistics based on manufacturing lot 
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), 
                                                                             Variance = var(PSI), SD= sd(PSI))

#Deliverable Three 
?t.test()

#getting a sample across all lots. 
sample_pop <- Suspension_Coil %>% sample_n(50)

#running a t-test to compare the sample and population means
one_test <-t.test(log10(sample_pop$PSI), mu=mean(log10(Suspension_Coil$PSI)))
one_test

#Comparing Samples to their populations, first step is 
#to make the samples based on manufacturing lots 

psi_lot1 <- Suspension_Coil %>% filter(Manufacturing_Lot== 'Lot1')
psi_lot2 <- Suspension_Coil %>% filter(Manufacturing_Lot== 'Lot2')
psi_lot3 <- Suspension_Coil %>% filter(Manufacturing_Lot== 'Lot3')

#t-test for each lot, starting with lot 1
test_lot1 <- t.test(log10(psi_lot1$PSI), mu=mean(log10(Suspension_Coil$PSI)))
test_lot1

test_lot2 <- t.test(log10(psi_lot2$PSI), mu=mean(log10(Suspension_Coil$PSI)))
test_lot2

test_lot3 <- t.test(log10(psi_lot3$PSI), mu=mean(log10(Suspension_Coil$PSI)))
test_lot3