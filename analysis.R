
library(dplyr)
library(ggplot2)

data("starwars")
glimpse(starwars)

# Create a bar plot counting the number of each species type
starwars %>%
  count(species) %>%
  ggplot(aes(y = species, x = n)) +
  geom_col()
