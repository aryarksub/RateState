# Arya Kondur
# October 2021
#
# Utility script for RateState.

library(ggplot2)
library(dplyr, warn.conflicts = FALSE)

all_states <- map_data("state")

get_map_state_color <- function(state) {
  single_state <- filter(all_states, region == tolower(state))
  gg <- ggplot() + 
    geom_polygon(data = all_states,
                 aes(x = long, y = lat, group = group),
                 color = "white",
                 fill = "grey30") + 
    geom_polygon(data = single_state,
                 aes(x = long, y = lat, group = group),
                 fill = "red") + 
    theme_void() + 
    theme(panel.background = element_rect(fill = '#FFECEC'))
  return(gg)
}