##################################
# 6th Lecture Script for R - Basic 
##################################

titanic <- readxl::read_xlsx('data/titanic_partial.xlsx')

i <- 2
######### program flow control - if and else

if(i == 1) {
  print('great!')
} else if (i == 2) {
  print('not great!')
} else {
  print('maybe great!')
}

######### loops for, while, repeat 

for(i in 1:nrow(titanic)) {
  print(i)
}

i <- 2
while(i < 10){
  i <- i + 1
  print(i)
}

i <- 2
repeat {
  i <- i + 1
  print(i)
  if(i > 10) {
    break
  }
}
