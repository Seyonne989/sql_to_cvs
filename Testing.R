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
while ( ! is.na( Testing[i,1]) ) {
   print(Testing[i,2])
   i = i + 1
 }


res <- dbSendQuery(con, "INSERT INTO `r_exp`.`import_csv` (`company_text`, `boss`, `ranking`, `popularity`, `bonus`, `sick_days`,`vacation`, `location`,`department`,`weight`) 
VALUES ('EA', 'Jon', '999', '-1', '0', '1000','6','Isreal','paper','0.4');")