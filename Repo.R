source("ConnectDB.R")

# dbListTables(con)
# 
# dailyActivity_merged <- dbReadTable(con, name = "dailyActivity_merged")
# head(dailyActivity_merged)
# 
# dailyCalories_merged <- dbReadTable(con, name = "dailyCalories_merged")
# head(dailyCalories_merged)
# 
# dailyIntensities_merged <- dbReadTable(con, name = "dailyIntensities_merged")
# head(dailyIntensities_merged)
# 
# dailySteps_merged <- dbReadTable(con, name = "dailySteps_merged")
# head(dailySteps_merged)
# 
# sleepDay_merged <- dbReadTable(con, name = "sleepDay_merged")
# head(sleepDay_merged)
# 
# weightLogInfo_merged <- dbReadTable(con, name = "weightLogInfo_merged")
# head(weightLogInfo_merged)

getdailyActivity <- function(x = ""){
  k <- dbGetQuery(con, statement = "SELECT * FROM mtcars WHERE am = 1;")
  return(k)
}