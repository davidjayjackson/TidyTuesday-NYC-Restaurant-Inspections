library(tidyverse)
library(janitor)
# library(readODS)
library(readxl)
resturants <- read_excel("./nyc_restaurantsXLS.xlsx")
janitor::clean_names(resturants)
resturants <- na.omit(resturants)
resturants$inspection_date <- lubridate::mdy(resturants$inspection_date)

resturants %>% count(boro,sort =TRUE)  %>%
  ggplot(aes(x=reorder(boro,n),n)) + geom_col()

%>%count(inspection_date,sort =TRUE) %>% 
  ggplot(aes(x=inspection_date,y=n))+ geom_line()
                      
                      
