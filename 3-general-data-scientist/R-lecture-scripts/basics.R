###########################################
# 3rd Lecture Script for R - Basic 
###########################################

2+3*8

4 / 2

2^2.22

4-2

1:10

# anything I put after this doesn't get run
# add two numbers then multiply the result
# then divide the result

2+3

5 * 5

25 / 3

# Objects

x <- 2 + 3

2 +3 -> y

x_0 = 2+4

die <- 6:12

die[3]

die * 2

die + die

die %*% die

die %o% die

my_string <- 'x_2'

assign(my_string,7)

#rules for names

X <- 8

round(4.6)

factorial(4)

die <- 1:6

mean(die) #die is an argument

median(die)

round(mean(die))

sample(die, 
       size = 6, 
       replace = TRUE) #default sample without replacement

args(sample)

sample(die,
       replace = TRUE,
       size = 3)

sample(die,
       3,
       TRUE)

# what if you want to make your own function?

roll <- sample(die, 2, TRUE)

# make sure to change your working directory with setwd()
source('first-function.R')

print(roll2(1,1))


