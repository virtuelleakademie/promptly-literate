# Load required libraries
library(tidyverse)
library(gganimate)

# Create a dataframe with the verbs
verbs <- c("harm", "hurt", "help", "touch", "speak")
df <- tibble(verb = verbs)

# Create a ggplot object
p <- df |>
    ggplot(aes(x = 10, y = 1, label = paste(verb))) +
    geom_text(aes(x = 1, y = 1), size = 14, 
              color = "black",
              label = "A robot may not") +
    geom_text(size = 14, color = "blue") +
    theme_void()

# Animate the plot
animation <- p +
    transition_states(verb, transition_length = 1, state_length = 1) +
    enter_fade() +
    exit_fade()

# Display the animation
animate(animation)

anim_save("animation.gif", animation, path = "images", nframes = 100, fps = 10)
