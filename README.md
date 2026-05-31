# 🛒 Online Retail Sales Analysis Dashboard

## 📌 Project Overview

This project performs an end-to-end analysis of an online retail dataset using Python, MySQL, and Power BI. The goal is to transform raw transactional data into actionable business insights through data cleaning, exploratory data analysis (EDA), SQL-based business analysis, and interactive dashboarding.

The project focuses on understanding sales performance, customer behavior, product trends, and geographical revenue distribution.

---

## 📂 Dataset

The dataset contains online retail transaction records with the following information:

- Invoice Number
- Product Description
- Quantity Purchased
- Invoice Date
- Unit Price
- Customer ID
- Country
- Revenue

### Key Metrics Analyzed

- Total Revenue
- Total Orders
- Total Customers
- Average Order Value (AOV)
- Top Products
- Top Customers
- Revenue by Country
- Revenue Trends

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|--------|----------|
| Python | Data Processing & Analysis |
| Pandas | Data Manipulation |
| NumPy | Numerical Operations |
| Matplotlib | Visualization |
| Seaborn | Exploratory Data Analysis |
| MySQL | SQL Queries & Business Analysis |
| Power BI | Interactive Dashboard |
| Jupyter Notebook | Analysis Environment |
| Git & GitHub | Version Control |

---

## 🔄 Project Workflow

### 1. Data Loading

- Imported dataset using Pandas
- Inspected dataset structure
- Reviewed data types and summary statistics

### 2. Data Cleaning

Performed:

- Missing value handling
- Duplicate removal
- Date formatting
- Revenue calculation
- Feature engineering

Created additional fields:

- Year
- Month
- Day of Week
- Hour
- Revenue

### 3. Exploratory Data Analysis (EDA)

Analyzed:

- Revenue trends over time
- Top-performing products
- Customer purchasing behavior
- Geographic sales distribution
- Peak shopping hours
- Weekly sales patterns

### 4. SQL Business Analysis

Business questions solved using MySQL:

- Top 10 Customers by Revenue
- Top 10 Products by Revenue
- Country-wise Revenue Analysis
- Customer Spending Analysis
- Average Order Value Analysis
- Product Purchase Analysis
- Revenue Trend Analysis

### 5. Dashboard Development

Developed an interactive Power BI dashboard containing:

#### KPI Cards

- Total Revenue
- Total Orders
- Total Customers
- Average Order Value
- Total Quantity Sold
- Countries Served

#### Visualizations

- Monthly Revenue Trend
- Top Products by Revenue
- Top Customers by Revenue
- Revenue by Country
- Revenue by Hour
- Revenue by Day of Week

#### Interactive Filters

- Product
- Year
- Month
- Country

---

## 📊 Dashboard Preview

### Key Dashboard Components

✔ Revenue KPI

✔ Orders KPI

✔ Customer KPI

✔ Average Order Value KPI

✔ Product Performance Analysis

✔ Country Revenue Analysis

✔ Sales Trend Analysis

✔ Time-based Revenue Analysis

---

## 📈 Key Insights

- Generated over £20M in total revenue.
- Served customers across 40+ countries.
- Identified top revenue-generating products.
- Discovered high-value customers contributing significantly to sales.
- Found peak sales hours and highest-performing weekdays.
- Analyzed country-wise business performance.

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

## ▶️ How to Run

### Python Analysis

1. Clone the repository

```bash
git clone https://github.com/yourusername/Online-Retail-Analysis.git
```

2. Install dependencies

```bash
pip install pandas numpy matplotlib seaborn
```

3. Launch Jupyter Notebook

```bash
jupyter notebook
```

4. Run all notebook cells

### SQL Analysis

1. Import dataset into MySQL
2. Execute queries from:

```text
retail_store.sql
```

3. Analyze generated business insights

### Power BI Dashboard

1. Open:

```text
ONLINE_STORE.pbix
```

2. Refresh data if required

3. Interact with filters and visuals

---

## 🚀 Future Improvements

- RFM Customer Segmentation
- Customer Lifetime Value (CLV) Analysis
- Sales Forecasting
- Product Recommendation System
- Advanced Market Basket Analysis

---

## 👨‍💻 Author

**Jasmeet Singh Bhatia**

Data Analytics | Python | SQL | Power BI

---

### ⭐ If you found this project useful, consider giving it a star!

