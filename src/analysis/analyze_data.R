
# CREATE PIVOT TABLE
library(readr)
library(dplyr)

## import the data from `gen/data-preparation/aggregated_df.csv`
df <- read_csv("../../gen/data-preparation/aggregated_df.csv")

## create pivot table 
df_pivot <- df %>% reshape2::dcast(date ~ neighbourhood, fun.aggregate = sum, value.var = "num_reviews")

## export results
write_csv(df_pivot, "../../gen/analysis/pivot_table.csv")

dir.create("../../gen/paper")
