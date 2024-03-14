# Load necessary libraries
install.packages("caret")
install.packages("e1071")

library(caret)
library(e1071)

# Assuming data is already loaded

# Prepare the data
set.seed(42)
index <- createDataPartition(data$pts, p=0.8, list=FALSE)
train <- data[index,]
test <- data[-index,]

# Linear regression model
model <- lm(pts ~ age + player_height + player_weight, data=train)

# Model summary
summary(model)

# Predictions
predictions <- predict(model, test)

# Calculate RMSE
rmse <- sqrt(mean((predictions - test$pts)^2))
cat("RMSE: ", rmse, "\n")
