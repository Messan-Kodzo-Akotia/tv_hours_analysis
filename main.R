library(tidyverse)
library(here)
<<<<<<< Updated upstream
tv_hours_tabulation<- gss_cat %>%
  filter(age < 30)%>%
=======
tv_hours_table<- gss_cat %>%
  filter(age>= 30)%>%
>>>>>>> Stashed changes
  group_by(marital)%>%
  summarise(mean_tv_hours=mean(tvhours, na.rm = T))

write.csv(tv_hours_tabulation, here("TV_hours_by_Marital.csv"))
