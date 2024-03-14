# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load the data
data <- read.csv("E:/Baylor Material/STA 5V85 - Capstone/Analysis 1/all_seasons.csv")

# Basic summary of the dataset
summary(data)

# Average age, height, and weight
cat("Average Age: ", mean(data$age), "\n")
cat("Average Height: ", mean(data$player_height), "\n")
cat("Average Weight: ", mean(data$player_weight), "\n")

# Distribution of players by team and country
cat("Top 5 Teams by Player Count:\n")
print(sort(table(data$team_abbreviation), decreasing = TRUE)[1:5])

cat("Top 5 Countries by Player Count:\n")
print(sort(table(data$country), decreasing = TRUE)[1:5])

# Average points, rebounds, and assists per game
cat("Average Points Per Game: ", mean(data$pts), "\n")
cat("Average Rebounds Per Game: ", mean(data$reb), "\n")
cat("Average Assists Per Game: ", mean(data$ast), "\n")
