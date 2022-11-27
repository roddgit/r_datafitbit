library(RMariaDB)
con <- dbConnect(drv = MariaDB(), 
                 host = "sv.rodd-it.my.id",
                 port = 6033,
                 dbname = "fitbit", 
                 user = "root", 
                 password = "My5qL_p455Word%%%")
# con
