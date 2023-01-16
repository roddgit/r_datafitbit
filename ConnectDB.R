library(RMariaDB)
con <- dbConnect(drv = MariaDB(), 
                 host = "localhost",
                 port = 3306,
                 dbname = "fitbit", 
                 user = "root", 
                 password = "")
# con
