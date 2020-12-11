died <- c(5, 6, 92, 59, 42, 165)
lived <- c(174, 213, 262, 261, 7, 28)
smoker <- rep(c(1,0), 3)
age <- rep(c("y","m","o"), each=2)

smokers <- data.frame(died, lived, smoker, age)


# Inciso a)
lived_smoker <- subset(smokers, smoker==1)[,c(1,2)]
prob1 <- colSums(prop.table(lived_smoker))
prob1

died_smoker <- subset(smokers, smoker==0)[,c(1,2)]
prob2 <- colSums(prop.table(died_smoker))
prob2

# Inciso b)
young_smoker <- subset(smokers, age=="y")[,c(1,2)]
prob3 <- sum(prop.table(young_smoker)[1,])
prob3

middle_smoker <- subset(smokers, age=="m")[,c(1,2)]
prob4 <- sum(prop.table(middle_smoker)[1,])
prob4   

old_smoker <- subset(smokers, age=="o")[,c(1,2)]
prob5 <- sum(prop.table(old_smoker)[1,])
prob5   

# Inciso c) 
ly_smoker <- subset(smokers, smoker==1 & age=="y")[,c(1,2)]
prob6 <- prop.table(ly_smoker)
prob6

lm_smoker <- subset(smokers, smoker==1 & age=="m")[,c(1,2)]
prob7 <- prop.table(lm_smoker)
prob7

lo_smoker <- subset(smokers, smoker==1 & age=="o")[,c(1,2)]
prob8 <- prop.table(lo_smoker)
prob8