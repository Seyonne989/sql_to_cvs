install.packages("RMySQL")
library(DBI)

con <- dbConnect(RMySQL::MySQL(),
                 dbname = "r_exp",
                 host = "127.0.0.1",
                 port = 3306,
                 user = "root",
                 password = "Serlion99")

Testing <- read.csv(file = 'C:/Users/Yoni/Desktop/sql_to_cvs/sample.csv', header = FALSE)

i <- 1
#while ( ! is.na( Testing[i,1]) ) {
#  print(Testing[i,2])
# i = i + 1
# }


# Example 
# INSERT INTO `r_exp`.`import_csv` (`company_text`, `boss`, `ranking`, `popularity`, `bonus`, `sick_days`, `vacation`, `location`) 
#VALUES ('gg', 'dd', '33', '7', '5', '6', '9', 'ENG');

#res <- dbSendQuery(con, "INSERT INTO `r_exp`.`import_csv` (`company_text`, `boss`, `ranking`, `popularity`, `bonus`, `sick_days`,`vacation`, `location`,`department`,`weight`) 
#VALUES ('EA', 'Jon', '999', '-1', '0', '1000','6','Isreal','paper','0.4');")
sqlstr <- "INSERT INTO `r_exp`.`import_csv` (`company_text`, `boss`, `ranking`, `popularity`, `bonus`, `sick_days`,`vacation`, `location`,`department`,`weight`)"
sqlstr <- paste(sqlstr, "VALUES", sep = " ")
for(j in 2:9) {
   sqlstr <- paste(sqlstr,  Testing[i,j], sep = " '")
   sqlstr <- paste(sqlstr,  ",", sep = "'")
}
sqlstr <- paste(sqlstr,  Testing[i,10], sep = " '")

sqlstr <- paste(sqlstr,  "\');")

print(sqlstr) 
res <- dbSendQuery(con, sqlstr)
