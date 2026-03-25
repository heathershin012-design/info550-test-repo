
library(dplyr)

sleep <- readRDS("output/data_clean.rds")

table1 <- sleep %>%
  group_by(Gender) %>%
  summarise(
    n = n(),
    mean_sleep_duration = mean(Sleep.Duration, na.rm = TRUE),
    mean_quality_of_sleep = mean(Quality.of.Sleep, na.rm = TRUE),
    mean_stress_level = mean(Stress.Level, na.rm = TRUE),
    .groups = "drop"
  )

saveRDS(table1, "output/table1.rds")
