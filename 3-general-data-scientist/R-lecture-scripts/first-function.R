###########################################
# Basic Function Script for R - Basic 
###########################################

roll <- function(die_size = 6, 
                 die_num = 1){
  
  die <- 1:die_size
  sample(die, 
         size = die_num, 
         replace = TRUE)
  
}

roll2 <- function(die_size, die_num) {
  die <- 1:die_size
  sample(die, 
         size = die_num, 
         replace = TRUE)
}
