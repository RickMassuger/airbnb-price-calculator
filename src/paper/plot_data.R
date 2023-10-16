
# PLOT ANTWERP 
library(readr)
library(dplyr)
library(ggplot2)
## import the data from `gen/analysis/pivot_table`
df_pivot <- read_csv("../../gen/analysis/pivot_table.csv")

pdf("plot_Antwerp.pdf")
plot(x = df_pivot$date, 
     y = df_pivot$Universiteitsbuurt, 
     col = "red", 
     type = "l", 
     xlab = "",
     ylab = "Total number of reviews", 
     main = "Effect of COVID-19 pandemic on Airbnb review count")


lines(df_pivot$date, df_pivot$`Sint-Andries`, col="blue")
lines(df_pivot$date, df_pivot$`Centraal Station`, col="green")

legend("topleft", c("Universiteitsbuurt", "Sint Andries", "Centraal Station"), fill=c("red", "blue", "green"))
dev.off()

# PLOT ALL

## import the data from `gen/data-preparation/aggregated_df.csv`
df <- read_csv("../../gen/data-preparation/aggregated_df.csv")

## group by date and calculate the sum of all reviews across neighbourhoods.
df_groupby <- df %>% group_by(date) %>% summarise(num_reviews = sum(num_reviews))

dir.create("../../gen/paper")
## plot the chart and store the visualisation.
pdf("../../gen/paper/plot_all.pdf")
plot(x = df_groupby$date, 
     y = df_groupby$num_reviews, 
     type = "l", 
     xlab = "",
     ylab = "Total number of reviews", 
     main = "Effect of COVID-19 pandemic on Airbnb review count")
dev.off()



