# 🛒 Online Retail Sales Analysis Dashboard

## 📌 Overview

This project implements an end-to-end Data Analytics and ETL pipeline using Python, MySQL, and Power BI. The objective is to transform raw retail transaction data into actionable business insights through data cleaning, exploratory data analysis (EDA), SQL-based business analysis, and interactive dashboard development.

The project follows a structured workflow where data is extracted and transformed using Python, loaded into MySQL for querying and analysis, and finally connected to Power BI for visualization and reporting.

---

## 📂 Dataset

The Online Retail dataset contains transactional sales records from an e-commerce business.

### Dataset Features

* Invoice Number
* Product Description
* Quantity
* Invoice Date
* Unit Price
* Customer ID
* Country

### Derived Features

* Revenue
* Year
* Month
* Day of Week
* Hour

---

## 🛠️ Tools & Technologies

| Tool             | Purpose                       |
| ---------------- | ----------------------------- |
| Python           | ETL, Data Cleaning & Analysis |
| Pandas           | Data Manipulation             |
| NumPy            | Numerical Operations          |
| Matplotlib       | Data Visualization            |
| Seaborn          | Exploratory Data Analysis     |
| MySQL            | Data Storage & SQL Analysis   |
| Power BI         | Dashboard & Reporting         |
| Jupyter Notebook | Development Environment       |
| GitHub           | Project Hosting               |

---

# 🔄 ETL Pipeline

This project follows a complete ETL (Extract, Transform, Load) workflow.

## Extract

* Imported the raw retail dataset into Python using Pandas.
* Loaded and inspected transactional sales records.
* Reviewed dataset structure, missing values, and data types.

## Transform

Performed data cleaning and preprocessing in Python.

### Data Cleaning

* Removed duplicate records
* Handled missing values
* Converted InvoiceDate into datetime format
* Standardized column formats
* Removed invalid transactions where required

### Feature Engineering

Created additional analytical columns:

* Revenue = Quantity × Unit Price
* Year
* Month
* Day of Week
* Hour

### Exploratory Data Analysis (EDA)

Analyzed:

* Sales trends
* Customer behavior
* Product performance
* Revenue distribution
* Geographic sales patterns
* Time-based purchasing behavior

## Load

* Exported the cleaned dataset from Python.
* Loaded transformed data into MySQL.
* Structured the database for analytical queries.

## SQL Business Analysis

Performed business analysis using MySQL queries:

* Top Customers by Revenue
* Top Products by Revenue
* Country-wise Revenue Analysis
* Average Order Value Analysis
* Revenue Trend Analysis
* Customer Purchase Analysis
* Product Purchase Analysis

## Visualization & Reporting

* Connected Power BI directly to MySQL.
* Imported SQL-ready data into Power BI.
* Built interactive dashboards and KPI reports.
* Added slicers and filters for dynamic analysis.

---

## 🔗 End-to-End Data Pipeline

```text
Raw Retail Dataset
        │
        ▼
Python (Pandas)
Data Cleaning + EDA + Feature Engineering
        │
        ▼
MySQL Database
Data Storage + SQL Business Analysis
        │
        ▼
Power BI Dashboard
Interactive Visualization & Reporting
        │
        ▼
Business Insights
```

## 🏗️ Pipeline Architecture

```text
Extract
  ↓
Retail Dataset

Transform
  ↓
Python
- Data Cleaning
- Data Transformation
- Feature Engineering
- Exploratory Data Analysis

Load
  ↓
MySQL Database

Analyze
  ↓
SQL Queries

Visualize
  ↓
Power BI Dashboard

Deliver
  ↓
Business Insights & Recommendations
```

---

## 📊 Dashboard Features

### KPI Cards

* Total Revenue
* Total Orders
* Total Customers
* Average Order Value (AOV)
* Total Quantity Sold
* Countries Served

### Visualizations

* Monthly Revenue Trend
* Top Products by Revenue
* Top Customers by Revenue
* Country-wise Revenue Analysis
* Revenue by Hour
* Revenue by Day of Week

### Interactive Filters

* Product Filter
* Country Filter
* Year Filter
* Month Filter

---

## 📈 Key Business Insights

* Generated over £20M in total revenue.
* Served customers across 40+ countries.
* Identified top-performing products.
* Discovered high-value customers.
* Analyzed peak shopping hours.
* Identified top revenue-generating countries.
* Evaluated customer purchasing behavior.

---

## 📁 Project Structure

```text
Online-Retail-Analysis/
│
├── data/
│   └── online_retail_sample.csv
│
├── notebooks/
│   └── Store_Project.ipynb
│
├── sql/
│   └── retail_store.sql
│
├── dashboard/
│   └── ONLINE_STORE.pbix
│
├── README.md
│
└── requirements.txt
```

---

## ▶️ How to Run

### Python Analysis

```bash
pip install pandas numpy matplotlib seaborn
jupyter notebook
```

Run all cells in the notebook.

### MySQL Analysis

1. Import dataset into MySQL.
2. Execute SQL queries from:

```text
retail_store.sql
```

### Power BI Dashboard

1. Open:

```text
ONLINE_STORE.pbix
```

2. Refresh the data connection.
3. Interact with dashboard filters and visuals.

---

## 🚀 Future Improvements

* RFM Customer Segmentation
* Customer Lifetime Value (CLV) Analysis
* Sales Forecasting
* Recommendation System
* Advanced Market Basket Analysis

---

## 👨‍💻 Author

**Jasmeet Singh Bhatia**

End-to-End Data Analytics Project using Python, MySQL, and Power BI.
