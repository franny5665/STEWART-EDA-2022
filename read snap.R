library(tidyverse)
library(readxl)

#read in
snap_data <- 
  read_excel(
    path = "data/SNAPsummary-3.xlsx"
    ,
    col_names = c("year", "n_users"),
    col_types = c("numeric","numeric","skip", "skip", "skip", "skip"),
    skip = 53,
    n_max = 6
  ) %>% 
  print()


#makegraph
ggplot(data = snap_data, 
       mapping = aes(x = year, y = n_users)) +
  geom_line() + 
  geom_point() +
  labs(
    x = NULL,
    y = "Number of People",
    title = "Change in Number of SNAP users From 2016-2020",
    subtitle = "USDA data"
  )
ggsave("Graphs/SNAP.png",height = 4, width = 6, units = "in", dpi = 600)

