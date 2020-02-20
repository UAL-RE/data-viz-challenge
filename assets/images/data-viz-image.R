# Graphics for data visualization challenge website
# Jeff Oliver
# jcoliver@email.arizona.edu
# 2020-02-20

rm(list = ls())

################################################################################
library(tidyverse)
library(gganimate)
library(RColorBrewer)
gapminder <- read.csv(file = "https://tinyurl.com/gapminder-five-year-csv")

continent_colors <- c("#D7191C",
                      "#A6611A",
                      "#2F2F2F",
                      "#018571",
                      "#2C7BB6")
gap_plot <- ggplot(data = gapminder,
                   mapping = aes(x = gdpPercap, 
                                 y = lifeExp, 
                                 color = continent,
                                 size = log10(pop))) +
  geom_point(alpha = 0.7) +
  scale_x_log10() +
  scale_size(range = c(1, 8), guide = "none", name = "Log(Population)") +
  scale_color_manual(values = continent_colors) +
  transition_time(time = year) +
  labs(x = "Log(GDP per capita)",
       y = "Life expectancy (years)",
       title = "{frame_time}",
       caption = "Life expectancy as a function of a country's per capita GDP \nPoint sizes reflect log-transformed population size") +
  ease_aes("linear") +
  theme_bw() +
  theme(axis.title = element_text(size = 16),
        plot.caption = element_text(size = 10, hjust = 0, vjust = -1),
        axis.text = element_text(size = 12),
        plot.title = element_text(hjust = 0.025, vjust = -7, size = 24),
        legend.position = c(0.82, 0.2),
        legend.title = element_blank(),
        legend.text = element_text(size = 12)) +
  guides(color = guide_legend(override.aes = list(size = 5)))
gap_plot

anim_save(filename = "data-viz-image.gif")
