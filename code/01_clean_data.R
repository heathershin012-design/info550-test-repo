library(dplyr)

# Load data
sleep <- read.csv("data/Sleep_Health_and_Lifestyle_Dataset.csv")

# Clean text (remove spaces)
sleep <- sleep %>%
  mutate(
    across(where(is.character), trimws),
    across(where(is.character), tolower)
  )

# Check missing values
colSums(is.na(sleep))

# Save cleaned data
saveRDS(sleep, "output/data_clean.rds")