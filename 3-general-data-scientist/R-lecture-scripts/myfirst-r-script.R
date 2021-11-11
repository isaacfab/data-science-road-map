###########################################
# First Example Script for R - Basic 
###########################################

for(i in 1:10){
	x <- x + 1 
}

library(ggplot2)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
