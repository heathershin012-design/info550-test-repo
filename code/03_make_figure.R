library(dplyr)
library(ggplot2)

sleep <- readRDS("output/data_clean.rds")

fig_dat <- sleep %>%
  group_by(Occupation) %>%
  summarise(
    mean_sleep_duration = mean(Sleep.Duration, na.rm = TRUE),
    .groups = "drop"
  )

p <- ggplot(fig_dat, aes(x = Occupation, y = mean_sleep_duration)) +
  geom_col() +
  labs(
    title = "Average Sleep Duration by Occupation",
    x = "Occupation",
    y = "Average Sleep Duration (hours)"
  ) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggsave("output/figure1.png", plot = p, width = 6, height = 4)
