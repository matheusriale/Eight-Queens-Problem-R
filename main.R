#Main

#install.packages("GA")
library(GA)


#Genetic algorithmn
#result
resul <- ga(type="permutation", fitness=eightqueens,lower=c(1,1,1,1,1,1,1,1), upper=c(8,8,8,8,8,8,8,8),popSize = 10, maxiter = 1000)

#solution
summary(resul)$solution

#evolution
plot(resul)

printing(summary(resul)$solution[1,])

