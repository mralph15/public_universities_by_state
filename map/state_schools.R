### Mapping Project of 4-Year Public Institutions in Each State

#Packages
library(usmap)
library(ggplot2)

#Load Data
state_schools <- read.csv("~/Documents/R Files/public_universities_by_state/data/state_schools.csv")

#Plot
plot_usmap(data = state_schools, values = "n_public_universities", color = "black") + 
  scale_fill_continuous(
    low = "white", high = "#0570b0", name = "", label = scales::comma
  ) + theme(legend.position = "right")

  
