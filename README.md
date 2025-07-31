# Term Deposit Prediction – R Project

A predictive analytics project focused on identifying customer profiles most likely to subscribe to term deposits using historical banking telemarketing data.

---

## Dataset  
[Kaggle – Bank Marketing Dataset](https://www.kaggle.com/datasets/prakharrathi25/banking-dataset-marketing-targets)

---

## Business Context

The client, Continental Ltd (a major bank in Portugal), is conducting a telemarketing campaign to increase term deposit subscriptions. This analysis aims to identify the customer characteristics and campaign strategies that lead to higher subscription rates.

---

## Tools Used

- R (caret, rpart, ggplot2, dplyr, forecast)
- R Markdown / R Script
- Time series modeling
- Classification: Decision Tree, Logistic Regression

---

## Project Objectives

- Build a **target customer profile** for term deposits  
- Analyze whether **demographics, balance, and call duration** influence subscriptions  
- Build **predictive models** (Decision Tree, Logistic Regression)  
- Forecast customer **account balances** using time series analysis

---

## Key Insights & Visuals

### Subscription by Age
Older customers (60+) and younger customers (18–30) have higher subscription rates.  
![Age vs Subscription]<img width="904" height="578" alt="image" src="https://github.com/user-attachments/assets/656708a3-567c-4f9b-9e71-c8f723e60d5b" />

<img width="982" height="570" alt="image" src="https://github.com/user-attachments/assets/050553e3-3fc9-4221-b018-36c59073a5b5" />


### Balance Impact
Customers with £1,000–£3,000 are far more likely to subscribe.  
![Balance vs Subscription]<img width="1060" height="558" alt="image" src="https://github.com/user-attachments/assets/1a8813ec-8815-4532-9a83-1992764041bd" />


### Call Behaviour
- Longer **call durations** → higher success
- More than 5 campaign calls → lower success  
![Call Duration]<img width="862" height="612" alt="image" src="https://github.com/user-attachments/assets/9e494291-732d-48b8-ad1e-da6be430b415" />

<img width="1002" height="600" alt="image" src="https://github.com/user-attachments/assets/c9fed700-4ce0-4c4c-b208-092d51f0b8c3" />

### Decision Tree Model
Model predicts with ~95% accuracy.  
![Decision Tree](https://github.com/serenavyuhachintala/term-deposit-prediction-r/blob/main/images/decision%20tree.png?raw=true)

<img width="708" height="840" alt="image" src="https://github.com/user-attachments/assets/e0f38921-4b84-42dd-97aa-97f032d9210b" />

### Time Series Forecast
Forecasts reveal optimal times for launching campaigns.  
![Balance Forecast]<img width="908" height="518" alt="image" src="https://github.com/user-attachments/assets/4ee64805-c9b1-4b24-9e9c-73701ceb68c5" />

<img width="912" height="514" alt="image" src="https://github.com/user-attachments/assets/e7d3a883-5e07-4d88-b520-cd3b5182dd82" />

---

## Business Recommendations

- Focus on **customers under 30** and **over 60**
- Prioritize accounts with **€1,000–€3,000 balances**
- Cap campaign calls at 5 attempts to avoid drop-off
- Target students and retirees during **Q2–Q4**
- Position term deposits as mid- or year-end investment strategies

---

