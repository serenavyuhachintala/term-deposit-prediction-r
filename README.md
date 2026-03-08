# Bank Marketing Analytics: Term Deposit Subscription Prediction Approach (R)

This project analyses customer behaviour in a bank telemarketing campaign to understand the factors that influence **term deposit subscriptions**.

Using the Bank Marketing dataset, the analysis explores demographic characteristics, financial attributes, and campaign interaction patterns to identify **which customers are most likely to subscribe to term deposits**.

The objective of the project is to generate **actionable insights that can help marketing teams improve campaign targeting and conversion rates.**

---

## Dataset

Source:  
[Kaggle – Bank Marketing Dataset](https://www.kaggle.com/datasets/prakharrathi25/banking-dataset-marketing-targets)

The dataset contains historical records from telemarketing campaigns conducted by a Portuguese banking institution promoting term deposit products.

It includes information about:

- Customer demographics
- Financial indicators such as account balance
- Campaign interaction behaviour
- Call duration and contact frequency
- Whether the customer subscribed to a term deposit

This dataset is widely used for analysing **customer conversion behaviour in financial marketing campaigns.**

---

## Tools & Technologies

- **R**
- caret (machine learning framework)
- rpart (decision tree modelling)
- ggplot2 (data visualisation)
- dplyr (data manipulation)
- forecast (time series modelling)

Methods used:

- Exploratory data analysis
- Classification modelling
- Time series forecasting

---

## Analytical Objectives

The analysis aimed to answer several key business questions:

- Which **customer segments** are most likely to subscribe to term deposits?
- How do **financial attributes such as account balance** influence subscription behaviour?
- What **campaign characteristics** improve or reduce conversion rates?
- Can predictive models help identify customers with a **higher probability of subscription**?

---

## Key Insights & Visuals

### Customer Demographics

Younger customers (18–30) and older customers (60+) demonstrate higher subscription rates compared with middle age groups.

![Age vs Subscription]<img width="904" height="578" alt="image" src="https://github.com/user-attachments/assets/656708a3-567c-4f9b-9e71-c8f723e60d5b" />

<img width="982" height="570" alt="image" src="https://github.com/user-attachments/assets/050553e3-3fc9-4221-b018-36c59073a5b5" />

---

### Financial Behaviour

Customers with moderate account balances were significantly more likely to subscribe to term deposits.

![Balance vs Subscription]<img width="1060" height="558" alt="image" src="https://github.com/user-attachments/assets/1a8813ec-8815-4532-9a83-1992764041bd" />

---

### Campaign Interaction Patterns

Customer engagement during calls has a strong relationship with successful subscription outcomes.

Key observations:

- Longer **call durations** are associated with higher conversion rates
- Repeated campaign contacts show **diminishing success rates**

![Call Duration]<img width="862" height="612" alt="image" src="https://github.com/user-attachments/assets/9e494291-732d-48b8-ad1e-da6be430b415" />

<img width="1002" height="600" alt="image" src="https://github.com/user-attachments/assets/c9fed700-4ce0-4c4c-b208-092d51f0b8c3" />

---

### Predictive Modelling

Two classification models were used to analyse subscription behaviour:

- **Logistic Regression**
- **Decision Tree Classification**

The models help identify patterns that distinguish subscribers from non-subscribers.

Feature importance analysis highlighted several key predictors including:

- Call duration
- Customer balance
- Campaign contact frequency

![Decision Tree](https://github.com/serenavyuhachintala/term-deposit-prediction-r/blob/main/images/decision%20tree.png?raw=true)

<img width="708" height="840" alt="image" src="https://github.com/user-attachments/assets/e0f38921-4b84-42dd-97aa-97f032d9210b" />

---

### Time Series Analysis

A time series model was applied to explore balance trends over time and assess potential campaign timing strategies.

Forecast results help identify **periods where marketing outreach may achieve stronger engagement.**

![Balance Forecast]<img width="908" height="518" alt="image" src="https://github.com/user-attachments/assets/4ee64805-c9b1-4b24-9e9c-73701ceb68c5" />

<img width="912" height="514" alt="image" src="https://github.com/user-attachments/assets/e7d3a883-5e07-4d88-b520-cd3b5182dd82" />

---

## Business Implications

Based on the analysis, several recommendations emerge:

- Prioritise customer segments with historically higher subscription likelihood
- Focus outreach on customers with **moderate account balances**
- Limit repeated campaign contacts to reduce customer fatigue
- Use predictive modelling to prioritise **high-probability leads**

These insights can help improve marketing campaign effectiveness while reducing operational costs.

---

## Project Value

This project demonstrates how **data analysis and predictive modelling can support marketing strategy decisions** by identifying high-value customer segments and improving campaign targeting.
