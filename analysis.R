
library(dplyr)
library(ggplot2)

data("starwars")
glimpse(starwars)

# Create a bar plot counting the number of each species type
starwars %>%
  count(species) %>%
  ggplot(aes(y = species, x = n)) +
  geom_col()

# A scatter plot of height against mass with points coloured by species
starwars %>%
  ggplot(aes(x = height, y = mass, col = species)) +
  geom_point()

# extracts the row which has the largest value of a variable.
starwars %>% slice_max(mass)

#how the size of the characters differed by gender
starwars %>% ggplot(aes(x = mass, fill = gender)) +
  geom_density(alpha = 0.8) +
  scale_x_log10()
