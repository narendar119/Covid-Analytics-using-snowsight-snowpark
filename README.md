# 🦠 COVID-19 Data Analysis using Snowflake & Snowpark

## 📌 Overview

This project analyzes global COVID-19 trends by combining:

- Confirmed cases data
- Vaccination data
- Country population data

The goal is to study the correlation between COVID cases and vaccination progress.

Dataset sources:
- Kaggle
- Johns Hopkins University COVID Dataset

---

## 🛠 Tech Stack

- Snowflake
- SQL
- Snowpark (Python)
- Matplotlib
- Internal Stages
- Views & Transformations

---

## 📊 Project Workflow

CSV Files → Snowflake Stage → RAW Tables → Data Cleaning → Analytics View → SQL Analysis → Snowpark Visualization

---

## 📈 Key Insights

1. Correlation between confirmed cases and vaccination rates
2. Top 10 countries by vaccination percentage
3. Top 10 countries by confirmed case percentage
4. Country-level trend visualization using Snowpark

---

## 📁 Folder Structure
sql/
├── 01_setup.sql
├── 02_tables.sql
├── 03_data_loading.sql
├── 04_data_cleaning.sql
├── 05_transformations.sql
└── 06_analytics_queries.sql
snowpark/
└── covid_visualization.py


---

## 🎯 Learning Outcomes

- Multi-file data ingestion in Snowflake
- Data cleaning using SQL
- Analytical view creation
- Percentage-based metrics computation
- Snowpark integration with Python
- Data visualization directly from Snowflake

---

## 🚀 Future Enhancements

- Add dashboard using Snowsight
- Add forecasting using Snowpark ML
- Build Streamlit front-end
