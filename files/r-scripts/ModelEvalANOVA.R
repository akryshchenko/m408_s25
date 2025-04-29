library(palmerpenguins)
library(tidyverse)
penguins <- penguins |> drop_na()
xlm <- penguins  |>  lm(flipper_length_mm ~ 1, data = _)
coef(xlm)
confint(xlm)

## OR
t.test(penguins$flipper_length_mm, mu = 205)


# car mpg vs engine type

mtcars |> lm(mpg ~ vs, data = _) |> summary()

## OR

mtcars |> t.test(mpg ~ vs, data = _)

# before and after example

# DATA PREP
before <-c(200.1, 190.9, 192.7, 213, 241.4, 196.9, 172.2, 185.5, 205.2, 193.7)
after <-c(392.9, 393.2, 345.1, 393, 434, 427.9, 422, 383.9, 392.3, 352.2)
df <- data.frame(before, after)

df |> lm(after - before ~ 1, data = _) |> (\(x) c(coef(x), confint(x)))()
## OR
df |> with(t.test(before, after, paired = T))

#ANOVA
penguins |> lm(flipper_length_mm ~ species, data = _) |> anova()

## OR

penguins |> aov(flipper_length_mm ~ species, data = _) |> anova()


# model evaluation

penguins |> 
  lm(body_mass_g ~ flipper_length_mm + bill_length_mm + bill_depth_mm + species, data = _) |> 
  summary()


xlm <- penguins |> 
  lm(body_mass_g ~ flipper_length_mm + bill_length_mm + bill_depth_mm + species, data = _) 

summary(xlm)
anova(xlm)

## OR

xlm_null <- penguins |> lm(body_mass_g ~ 1, data = _)
anova(xlm_null, xlm)

## OR

library(supernova)
supernova(xlm)


xlm1 <- penguins |> 
  lm(body_mass_g ~  bill_length_mm + bill_depth_mm , data = _) 

summary(xlm1)

xlm2 <- penguins |> 
  lm(body_mass_g ~ flipper_length_mm + species, data = _) 

#summary(xlm2)

xlm3 <- penguins |> 
  lm(body_mass_g ~ flipper_length_mm + species + bill_length_mm, data = _) 

summary(xlm3)

anova(xlm2, xlm3)
