###########################################
# 2nd Lecture Script for R - Basic 
###########################################

# base data 
data()

# getting help with a function

library(ggplot2)

data("diamonds")

hist(diamonds$x)

?plot()

plot(diamonds$x, 
     diamonds$y,
     type = "s")

#more on installing packages and creating objects
pkgs <- c('dplyr','broom')

x <- c(1,2,3,6,8,12)

y <- rnorm(100)

u <- runif(100)  

library(ggplot2)  #require(ggplot2)
  
qplot(u,y)

qplot(y)

