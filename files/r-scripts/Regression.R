#AVOVA for palmerpenguins
library(palmerpenguins)
# Stratification
penguins |>  drop_na()  |> 
  group_by(species) |>  
  summarise(mean = mean(flipper_length_mm),
            median = median(flipper_length_mm))
library(tidyverse)
# ANOVA
species_aov <- aov(flipper_length_mm ~ species, penguins)
summary(species_aov)

#catigorical vs catigorical
# Count and Proportions
penguins |>  group_by(species, island) |> 
  summarise(count = n(), proportions = n() / nrow(penguins))

# Chi-Square Test
penguins |> with(chisq.test(species, island))

#Correlation test
# Pearson's Correlation
penguins |> drop_na() |> cor.test(~ body_mass_g + flipper_length_mm, 
                                  data = _)


