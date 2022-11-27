set global sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

UPDATE dailyActivity_merged
SET ActivityDate = STR_TO_DATE(ActivityDate,'%m/%d/%Y');
ALTER TABLE dailyActivity_merged
MODIFY COLUMN  ActivityDate DATE;

UPDATE dailyCalories_merged
SET ActivityDay = STR_TO_DATE(ActivityDay,'%m/%d/%Y');
ALTER TABLE dailyCalories_merged
MODIFY COLUMN  ActivityDay DATE;

UPDATE dailyIntensities_merged
SET ActivityDay = STR_TO_DATE(ActivityDay,'%m/%d/%Y');
ALTER TABLE dailyIntensities_merged
MODIFY COLUMN  ActivityDay DATE;

UPDATE dailySteps_merged
SET ActivityDay = STR_TO_DATE(ActivityDay,'%m/%d/%Y');
ALTER TABLE dailySteps_merged
MODIFY COLUMN  ActivityDay DATE;

UPDATE sleepDay_merged
SET SleepDay = STR_TO_DATE(SleepDay,'%m/%d/%Y %h:%i:%s %p');
ALTER TABLE sleepDay_merged
MODIFY COLUMN  SleepDay DATETIME;

UPDATE weightLogInfo_merged
SET `Date` = STR_TO_DATE(`Date`,'%m/%d/%Y %h:%i:%s %p');
ALTER TABLE weightLogInfo_merged
MODIFY COLUMN  `Date` DATETIME;
