library(tidyverse)
library(palmerpenguins)
library(dplyr)
sum_stats <- penguins %>% 
  drop_na %>% 
  filter(year==2007) %>% 
  group_by(island) %>% 
  summarise(mean = mean(bill_length_mm),
            sd = sd(bill_length_mm),
            median = median(bill_length_mm),
            n = length(bill_length_mm)) %>% 
  print

data_3_1 <- read.csv("~/Downloads/data/data_3_1.csv")
data_3_2 <- read.csv("~/Downloads/data/data_3_2.csv")
View(data_3_2)
full_data<-full_join(data_3_1,data_3_2,by="ID1")
full_data


# Mutate example
new2_mtcars<-mtcars %>%
  mutate(log_mpg = log(mpg))

new1_mtcars<-mtcars %>%
  mutate(log_mpg = log(mpg)) %>%
  head()


head(new2_mtcars)

mtcars %>%
  mutate(log_mpg = log(mpg), log_hp = log(hp)) %>%
  head()

new_penguins<-penguins %>%
  mutate( log_flipper_length_mm = log(flipper_length_mm))

head(new_penguins)

#select example

mtcars %>%
  mutate(log_mpg = log(mpg), log_hp = log(hp)) %>%
  select(mpg, log_mpg, hp, log_hp) %>%
  head()


penguins %>% for(i in 1:8){if(is.numeric(penguins[,i])){select(penguins[,i])}}

penguins %>%
  select(bill_length_mm, bill_depth_mm, flipper_length_mm, body_mass_g)

# filter example

mtcars %>%
  mutate(log_mpg = log(mpg), log_hp = log(hp)) %>%
  select(mpg, log_mpg, hp, log_hp) %>%
  filter(log_hp < 5) %>%
  head()

penguins %>%
  filter(species == 'Gentoo') %>%
  head()

mtcars %>%
  mutate(log_mpg = log(mpg), log_hp = log(hp)) %>%
  select(mpg, log_mpg, hp, log_hp) %>%
  filter(log_hp < 5) %>%
  mutate(hilhp = if_else(log_hp > mean(log_hp), 1, 0)) %>%
  head()

penguins %>%
  drop_na() %>%
  mutate(long = if_else(bill_length_mm > mean(bill_length_mm), 1, 0)) %>%
  select(bill_length_mm,long)%>%
  group_by(long) %>%
  filter(long==1) %>%
  head()

mtcars %>%
  mutate(log_mpg = log(mpg), log_hp = log(hp)) %>%
  select(mpg, log_mpg, hp, log_hp) %>%
  filter(log_hp < 5) %>%
  mutate(hilhp = if_else(log_hp > mean(log_hp), 1, 0)) %>%
  group_by(hilhp) %>%
  head()

penguins %>%
  drop_na() %>%
  group_by(species) %>%
  summarise(mean = mean(flipper_length_mm))%>%
  print
