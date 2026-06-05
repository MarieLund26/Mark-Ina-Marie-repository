#Title:Reasons for divorces in Denmark from 1869-2025
#Authors: Mark Pagh, Marie Lund Jensen and Ina Thomsen
#Date: 17-05-2026
#Output html_document

#Library - MP
library(tidyverse)
library(ggplot2)
library(dplyr)
library(tidyr)
library(here)



#Load data + cleaning na - MLJ
Skilsmisse <- read_csv2(here("data/Skilsmisser.CSV"), na = "NULL")


#Data inspections - MLJ
head(Skilsmisse)
glimpse(Skilsmisse)



##ggplot - IT
Skilsmisse %>%
  tail(157) %>%
  ggplot(aes(x = Year, y = Divorces)) +
  geom_line(color = "darkgreen") +
  geom_point(color = "darkgreen") +
  xlim(1869, 2025) +
  ylim(0, 20000) +
  scale_x_continuous(n.breaks = 15) +
  scale_y_continuous(n.breaks = 15) +
  ggtitle("Divorces in Denmark 1869-2025")
