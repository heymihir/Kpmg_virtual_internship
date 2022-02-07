library(tidyverse)
library(stringr)
library(readxl)
library(lubridate)

Transactions <- read_xlsx("KPMG_VI_New_raw_data_update_final.xlsx",skip = 1,sheet= 2)

Transactions$order_status = as.factor(Transactions$order_status)
Transactions$product_size = as.factor(Transactions$product_size)
Transactions$product_class = as.factor(Transactions$product_class)
Transactions$brand = as.factor(Transactions$brand)
Transactions$product_line =as.factor(Transactions$product_line)
#changing data types

product_line_na <- which(is.na(Transactions$product_line))
#Null Product Line

Pending_orders <- which(is.na(Transactions$online_order))
#unconfirmed orders

unknown_brand <- which(is.na(Transactions$brand))
#unknown brands

glimpse(Transactions)
summary(Transactions)


#To Remove NA---------

#Transactions<- Transactions[-Pending_orders,]
#Transactions <- Transactions[-unknown_brand,]
#Transactions <- Transactions[-product_line_na,]
