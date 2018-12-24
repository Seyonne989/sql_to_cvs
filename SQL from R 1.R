install.packages("RMySQL")
library(DBI)
 con <- dbConnect(RMySQL::MySQL(),
                  dbname = "r_exp",
                  host = "127.0.0.1",
                  port = 3306,
                  user = "root",
                  password = "Serlion99")
 res <- dbSendQuery(con, "select * from names")
 data <- dbFetch(res, n = 3)
 write.csv(data, file = "C:/Users/Yoni/Desktop/test/MyData.csv")
 
 dbClearResult(res)
 res1 <- dbSendQuery(con, "select * from names")
 while (!dbHasCompleted(res1)) {
   chunk <- dbFetch(res1, 2)
   print(chunk)
   print("potatoe")
 }
 