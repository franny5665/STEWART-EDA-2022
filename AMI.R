library(tidyverse)
library(readxl)

#read in
AMI_data <- 
  read_excel(
    path = "Book2.xlsx",
    col_names = c("year", "n_ppl"),
    col_types = c("numeric","numeric"),
    skip = 1,
    n_max = 8
  ) %>% 
  print()

ggplot(data = AMI_data, 
       mapping = aes(x = year, y = n_ppl)) +
  geom_line() + 
  geom_point() +
 xlim(2016,2022) +
   labs(
    x = NULL,
    y = "Number of People",
    title = "Number of AMI's of Adults From 2016-2020",
    subtitle = "MHA data"
  )
citation("readxl")
