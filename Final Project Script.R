library(tidyverse)
library(dplyr)
library(gapminder)
library(ggrepel)
library(socviz)
library(ggridges)

#average tuition for public 4 year instate 

temp = read_csv("Private tuition.csv")
view(temp)

p <- ggplot(data = temp,
            mapping = aes(x = year,
                          y = public_4yr_instate))+
  geom_line(data = temp,
            mapping = aes(x = year,
                          y = private ))
p + geom_line()+
  labs(y="Private and Public tuition in dollars",
    title= "College tuition changes")

