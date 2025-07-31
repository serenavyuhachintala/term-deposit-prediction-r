# Term Deposit Prediction - R Project
# Serena Vyusha Chintala
# Dataset: https://www.kaggle.com/datasets/prakharrathi25/banking-dataset-marketing-targets

# --------------------------------------------------
# 1. Load Libraries
# --------------------------------------------------

library(ggplot2)
library(dplyr)
library(readr)
library(rpart)
library(rpart.plot)
library(caret)
library(forecast)
library(lubridate)

# --------------------------------------------------
# 2. Load Data
# --------------------------------------------------

df <- read_csv("bank.csv")  # Make sure the dataset is in your working directory

# View structure
str(df)

# --------------------------------------------------
# 3. Data Cleaning & Transformation
# --------------------------------------------------

# Convert target variable to factor
df$y <- factor(df$y, levels = c("no", "yes"))

# Check missing values
colSums(is.na(df))

# --------------------------------------------------
# 4. Exploratory Data Analysis
# --------------------------------------------------

# Subscription by Age
ggplot(df, aes(x = age, fill = y)) +
  geom_histogram(binwidth = 5, position = "fill") +
  labs(title = "Term Deposit Subscription by Age", y = "Proportion")

# Balance vs Subscription
ggplot(df, aes(x = balance, fill = y)) +
  geom_histogram(binwidth = 500, position = "fill") +
  xlim(0, 10000) +
  labs(title = "Balance vs Subscription")

# Call Duration Impact
ggplot(df, aes(x = duration, fill = y)) +
  geom_histogram(binwidth = 100, position = "fill") +
  labs(title = "Call Duration vs Subscription")

# --------------------------------------------------
# 5. Decision Tree Classification
# --------------------------------------------------

# Create model
tree_model <- rpart(y ~ age + balance + duration + campaign + pdays + previous + job + marital + education, data = df, method = "class")

# Plot
rpart.plot(tree_model, type = 2, extra = 104)

# Predict and evaluate
pred_tree <- predict(tree_model, type = "class")
confusionMatrix(pred_tree, df$y)

# --------------------------------------------------
# 6. Logistic Regression
# --------------------------------------------------

log_model <- glm(y ~ age + balance + duration + campaign + job + education, data = df, family = binomial)

summary(log_model)

# Predict & confusion matrix
pred_log <- ifelse(predict(log_model, type = "response") > 0.5, "yes", "no")
confusionMatrix(factor(pred_log, levels = c("no", "yes")), df$y)

# --------------------------------------------------
# 7. Time Series Forecasting (for average balance)
# --------------------------------------------------

# Simulate monthly average balance (assuming date field available)
# If 'date' column exists, convert it
# df$date <- dmy(df$date)

# Create dummy date if missing
set.seed(123)
df$month <- sample(month.name[1:12], nrow(df), replace = TRUE)

monthly_balance <- df %>%
  group_by(month) %>%
  summarise(avg_balance = mean(balance, na.rm = TRUE))

# Convert to time series
ts_balance <- ts(monthly_balance$avg_balance, frequency = 12)

# Forecast
model_ts <- auto.arima(ts_balance)
forecast_ts <- forecast(model_ts, h = 6)

# Plot
plot(forecast_ts, main = "Forecasted Average Balance for Next 6 Months")


