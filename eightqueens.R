#Deciding queens positions

eightqueens <- function(sol)
{
  #test
  #sol = c(1,5,8,4,2,6,7,3)
  
  
  #initializes a vector with 64 positions filled with 0s
  vector = rep.int(0,64)
  
  #auxiliary variable
  pos = 1
  
  #transforms solution on to a vector with 64 positions
  for (i in 1:8) {
    vector[ pos + sol[i] -1] = 1;
    pos = pos + 8
  }
  
  #transforms the vector on to a 8 by 8 matrix 
  queens = matrix(vector, nrow=8,ncol=8,byrow =F)#fill by column
  
  
  #variable to count the number of queen intercepts(attacks) 
  total = 0 
  
  #verify lines and columns of the 'chess board'
  for (i in 1:8) {
    #columns
    total = total + ifelse(sum(queens[,i])>1,1,0)
    #lines
    total = total + ifelse(sum(queens[i,])>1,1,0)
  }
  
  #transpose the diagonals
  tmp <- row(queens) - col(queens)
  z = split(queens,tmp)
  
  #we invert the matrix to read the other diagonals 
  queens2 = queens[,8:1]
  tmp <- row(queens2) - col(queens2)
  y = split(queens2,tmp)

  for (i in 1:15) {
    #diagonals
    total = total + ifelse(sum( z[[i]])>1,1,0)
    #inverted diagonals
    total = total + ifelse(sum( y[[i]])>1,1,0)
  }
  return(-total)
  #we search the closest value to 0, thats why we return negative total 
  
  
}










