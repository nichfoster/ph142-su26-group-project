library(haven)
library(dplyr)

# Read BRFSS data
brfss <- read_xpt("LLCP2024.XPT")

# Make the sample reproducible
set.seed(142)

# Randomly sample 5000 observations
brfss_sample <- slice_sample(brfss, n = 5000)

# Save as CSV
write.csv(
  brfss_sample,
  "brfss2024_sample.csv",
  row.names = FALSE
)

# Check dimensions
dim(brfss_sample)