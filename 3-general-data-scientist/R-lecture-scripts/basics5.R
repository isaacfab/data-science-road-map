##################################
# 5th Lecture Script for R - Basic 
##################################

########## selecting values

titanic <- readxl::read_xlsx('data/titanic_partial.xlsx')

#pos integers - r x c 
titanic[1:5,1:5] #index starts a 1

titanic[c(4,7,90),1:5]

#neg integers
titanic[-1:-870,-1:-7]

#logical
selected_rows <- rep(FALSE, times = 890)

selected_rows <- c(selected_rows, TRUE)

titanic[selected_rows, ]

selected_rows[56] <- TRUE

titanic[selected_rows, ]

colnames(titanic)

titanic[,c("Age","Sex")]

mean(titanic$Fare[1:100])

table(titanic[[9]])

############### more on changing values

selected_rows[c(2,56,78,90)]<- rep(TRUE, 4)

titanic$Age[1] <- 23
titanic[1,1] <- 22

titanic$new <- selected_rows

titanic$calc <- titanic$Age / titanic$Fare

mean(titanic$calc, na.rm = TRUE)

titanic_sub <- titanic[titanic$Fare > 0,]

titanic_sub$calc <- titanic_sub$Age / titanic_sub$Fare

rm(titanic_sub)

titanic$new <- NULL
titanic$calc <- NULL

################### more sub-setting

# <, >, >=, <=, ==, !=, %in%

titanic_sub <- titanic$Age[titanic$Fare == 0]

titanic$Fare[titanic$Fare == 0] <- 1

summary(titanic_sub)

titanic[titanic$Title %in% c("Mr","Master"),]

titanic$Title[titanic$Fare == 0] <- "Crew"

# Boolean operators and - &, or - |, any, all

titanic$Title[titanic$Fare == 0 | titanic$Age > 25] <- "Crew"

##################### missing values

titanic <- readxl::read_xlsx('data/titanic_partial.xlsx')

mean(c(1,2,4,NA), na.rm = TRUE)

table(is.na(titanic$Cabin))

titanic$Cabin[is.na(titanic$Cabin)] <- 0

############ more on selecting

i <- which(titanic$Fare == 0)

