library(ggplot2)
library(dplyr)

p1 <- ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
    geom_point() +
    labs(title = "Highway MPG vs. Engine Displacement",
         x = "Engine Displacement (L)",
         y = "Highway MPG",
         color = "Vehicle Class") +
    theme_minimal()

ggsave(
  filename = "plots/mpg_scatter.png",
  plot = p1,
  width = 10,
  height = 7,
  dpi = 300
)
