#Group B R Script by Bridget Hall, Bryan Lu, Eloise Trout, Mia Poley, Yuzi Yang, Chuchu Li
library(tidyverse)
library(dplyr)
library(gapminder)
library(ggrepel)
library(ggridges)

#bring in data 
temp = read_csv("Private tuition.csv")
view(temp)

p <- ggplot(data = temp) 
graph<- p + geom_line(data = temp,
            mapping = aes(x = year,
                          y = private, 
                          color= "red")) +
geom_line(data = temp,
          mapping = aes(x = year,
                        y = public_4yr_instate,
                        color="blue"))

graph + labs(x= "Year", 
     y = "Tutition in U.S. Dollars",
     title = "Tuition Increase Public vs. Private Universities")+
  scale_color_discrete(name="Type", labels = c("Public", "Private"))


