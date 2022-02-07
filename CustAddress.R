library(tidyverse)
library(stringr)
library(readxl)
library(lubridate)


CustAddress<- read_xlsx("KPMG_VI_New_raw_data_update_final.xlsx",skip = 1,sheet=5 )
glimpse(CustAddress)




CustAddress$state <- str_replace(CustAddress$state,"New South Wales","NSW")
CustAddress$state <- str_replace(CustAddress$state,"Victoria","VIC")
#Changing data names 

CustAddress$state= as.factor(CustAddress$state)
CustAddress$country = as.factor(CustAddress$country)
#Changing data formats 

CustAddress$property_valuation <- CustAddress$property_valuation/10

summary(CustAddress)
glimpse(CustAddress)
