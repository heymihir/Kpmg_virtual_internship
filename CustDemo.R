library(tidyverse)
library(stringr)
library(readxl)
library(lubridate)


CustDemo <- read_xlsx("KPMG_VI_New_raw_data_update_final.xlsx",skip = 1,sheet=4 )

na_job_industry <- which(str_detect(CustDemo$job_industry_category,'n/a')) 
#job category mentioned as "n/a"
null_job_title <- which(is.na(CustDemo$job_title))
# NULL labelled jobs 




CustDemo$job_title <- as.factor(CustDemo$job_title)
CustDemo$job_industry_category <- as.factor(CustDemo$job_industry_category)

CustDemo$gender <-  str_to_upper(CustDemo$gender)
CustDemo$gender <- str_replace(CustDemo$gender,'F','FEMALE')
CustDemo$gender <- str_replace(CustDemo$gender,'FEMALEEMAL','FEMALE')
CustDemo$gender <- str_replace(CustDemo$gender,'FEMALEEMALE','FEMALE')
CustDemo$gender <- str_replace(CustDemo$gender,'FEMALEE','FEMALE')

CustDemo$gender <- str_replace(CustDemo$gender,'M','MALE')
CustDemo$gender <- str_replace(CustDemo$gender,'MALEALE','MALE')

CustDemo$gender <- str_replace(CustDemo$gender,'U','UNSPECIFIED')# CHANGING DATA FORMATSS

CustDemo$gender = as.factor(CustDemo$gender)
CustDemo$wealth_segment = as.factor(CustDemo$wealth_segment)
CustDemo$deceased_indicator = as.factor(CustDemo$deceased_indicator)
CustDemo$owns_car = as.factor(CustDemo$owns_car)

glimpse(CustDemo)
summary(CustDemo)


#To remove all NA's -----------------------

#CustDemo <- CustDemo[-na_job_industry,]
#CustDemo <- CustDemo[-null_job_title,]

#Need Clarification on Default column 




