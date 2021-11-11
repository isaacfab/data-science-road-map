##################################
# 4th Lecture Script for R - Basic 
# Heterogeneous Data Structures
##################################

################# Lists 

list1 <- list(100:130, "R", list(TRUE, FALSE))

list1

# we will use this library to pull data from 
# this API - http://api.worldbank.org/V2/country?incomeLevel=LIC
# install.packages("XML")

library(XML)

world_bank_income <- xmlToList('http://api.worldbank.org/V2/country?incomeLevel=LIC')

str(world_bank_income)

################# Data Frames

deck <- data.frame(name = c('ace','king','queen'),
                   suit = c('clubs','clubs','clubs'),
                   value = c(13,12,11)
                   )



world_bank_income <- xmlToDataFrame('http://api.worldbank.org/V2/country?incomeLevel=LIC')

################ reading and saving data

# flat text files (most common)
# make sure to set your wd with setwd()

new_data <- read.table('data/deck.csv',sep=",",header=TRUE)

deck <- read.csv('data/deck.csv', stringsAsFactors = FALSE)

write.csv(deck, file = "data/new_deck.csv")

# spreadsheets

library(readxl)

excel_data <- read_excel('data/titanic_partial.xlsx')

# R files RDS and RData

save(excel_data, file = 'data/my.RData')

rm(excel_data)

load(file = 'data/my.RData')

# databases... lots of ODBC libraries for every type of DB

library(RSQLite)

con <- dbConnect(RSQLite::SQLite(), "data/example.db")

dbListTables(con)

res <- dbSendQuery(con, "SELECT * FROM employees")

employees <- dbFetch(res)

# Clear the result
dbClearResult(res)

# Disconnect from the database
dbDisconnect(con)

# Other files... there is probably a library on CRAN for that




