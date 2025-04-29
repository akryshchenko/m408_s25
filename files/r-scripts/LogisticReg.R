## Data
library(GLMsData)
library(carData)
library(palmerpenguins)

## Ordinal and Multinomial Models
library(VGAM)

gentoo<-rep(0,length(penguins$flipper_length_mm))

penguins <- penguins |> mutate(gentoo = ifelse(species == "Gentoo", 1, 0))
res <- penguins |> glm(gentoo ~ flipper_length_mm + body_mass_g, 
                       data = _,
                       family = binomial())
summary(res)


predict(res, 
        newdata = data.frame(flipper_length_mm = 200, body_mass_g = 4005),
        type = "response")

predict(res, 
        newdata = data.frame(flipper_length_mm = 220, body_mass_g = 4775),
        type = "response")

res <- vglm(poverty~religion+degree+country+age+gender,
            family = propodds(),
            data = WVS)

summary(res)

predict(res, 
        newdata = data.frame(religion = "yes", degree = "yes", country = "USA", age = 90, gender = "male"),
        type = "response")


res <- penguins |> 
  vglm(species ~ body_mass_g + flipper_length_mm,
       family = multinomial(),
       data = _)

summary(res)

predict(res, 
        newdata = data.frame(flipper_length_mm = 200, body_mass_g = 4005),
        type = "response")

predict(res, 
        newdata = data.frame(flipper_length_mm = 220, body_mass_g = 4775),
        type = "response")
