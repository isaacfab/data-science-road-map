###########################################
# 3rd Lecture Script for R - Basic 
###########################################

#atomic vectors
die <- c(1,2,3,4,5,6)

length(die)

sum(die[1:3])

typeof(die)

#integers 

die2 <- c(1L,2L,3L,4L,5L,6L)

sqrt(5) 

#R rounds at 16 sig digits  

#characters

die_text <- c("one","2","three","four","5","six")

typeof(die_text)

#logical
5>=6

logical_vec <- c(TRUE, FALSE, T, F)

#complex or raw

die_complex <- c(1i, 2i)

############### attributes
attributes(die)

#names and dim

names(die) <- c('one','two','three','four','five','six')

dim(die) <- c(1,2,3)

#custom attributes
attr(die, "note") <- "this a great object!"

################ matrix and array

die_matrix <- matrix(die, nrow = 3, ncol = 2) #2D

die_array <- array(die, dim = c(1,2,3)) #3D

################ class attribute

class(die)

dim(die)  <- c(2,3)

class(5)
class('string')
class(TRUE)

now <- Sys.time()
class(now) #number of seconds since 12:00AM 1970 UTC

################### factors - categorical variables

people <- factor(c('male','female','male','male'))

################## Coercion 

class(die)

die_chr <- as.character(die)

as.logical(1)

new_num <- as.numeric("two")

