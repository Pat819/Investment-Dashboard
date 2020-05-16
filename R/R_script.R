## Script

##
library(tidyverse)
library(data.table)
library(tidylog)
library(lubridate)
library(Hmisc)
library(quantmod)

##

AAPL <- as.data.frame(getSymbols("AAPL", env=NULL))

AAPL %>% glimpse

AAPL<- AAPL %>% mutate(Date = ymd(row.names(AAPL)))

AAPL %>% ggplot(aes(x=Date, y=AAPL.Close))+
  geom_line()


##
APT<- as.data.frame(getSymbols("APT.AX", env=NULL))

APT<- APT %>% mutate(Date = ymd(row.names(APT)))

APT %>% view()
APT %>% ggplot(aes(x=Date, y=APT.AX.Close))+
  geom_line()
