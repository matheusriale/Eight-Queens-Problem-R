#printing the chessboard

#install.packages("imager")

printing <- function(d)
{
library(imager)


image <- load.image(file.choose())
plot(image)


#coordinates
x = c(18,53,88,122,158,192,227,262)


for (i in 1:8) {
  #writing over the chessboard where we would have our 8 queens
  text(x[i],x[d[i]],"Q",cex=2,col = "red")
 
  
}

}

