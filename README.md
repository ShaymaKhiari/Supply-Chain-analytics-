# 📦 Supply Chain Analytics Dashboard

## 📖 Project Overview

This project presents a comprehensive Supply Chain Analytics solution developed using **MySQL** and **Power BI**. The objective is to analyze logistics operations, shipping performance, delivery efficiency, profitability, and customer distribution using real-world transactional data from the DataCo Supply Chain Dataset.

The project combines data cleaning, SQL-based exploratory analysis, KPI development, and interactive dashboard visualization to generate actionable business insights that support operational and strategic decision-making.

---

## 🎯 Business Problem

Efficient supply chain management is critical for ensuring customer satisfaction, reducing operational costs, and maintaining competitive advantage. Organizations frequently encounter challenges such as:

* Delivery delays
* High transportation costs
* Late delivery risks
* Uneven geographic performance
* Profitability fluctuations across product categories
* Limited visibility into logistics operations

This project aims to identify operational bottlenecks, evaluate logistics performance, and provide data-driven recommendations for supply chain optimization.

---

## 🎯 Project Objectives

The primary objectives of this project are:

* Analyze shipping and delivery performance.
* Measure revenue and profitability across product categories.
* Evaluate late-delivery risk.
* Identify categories and regions experiencing operational inefficiencies.
* Develop key performance indicators (KPIs) for monitoring supply chain health.
* Create an interactive Power BI dashboard for business stakeholders.
* Generate strategic recommendations to improve logistics performance.

---

# 🗂 Dataset Description

## Dataset Source

**DataCo Supply Chain Dataset**

The dataset contains transactional records associated with customer orders, shipping activities, product categories, financial performance, and geographic information.

---

## Dataset Characteristics

The dataset includes:

* Customer information
* Product information
* Order details
* Shipping performance
* Geographic locations
* Sales transactions
* Profitability metrics
* Delivery status information

The dataset contains over 180,000 records and multiple business dimensions suitable for supply chain and logistics analytics.

---

## Key Variables

| Variable                      | Description                          |
| ----------------------------- | ------------------------------------ |
| Days for shipping (real)      | Actual shipping duration             |
| Days for shipment (scheduled) | Planned shipping duration            |
| Sales per customer            | Revenue generated per transaction    |
| Benefit per order             | Profit generated per order           |
| Delivery Status               | Shipment completion status           |
| Late_delivery_risk            | Risk indicator for delayed shipments |
| Category Name                 | Product category                     |
| Department Name               | Product department                   |
| Customer City                 | Customer city                        |
| Customer State                | Customer state                       |
| Customer Country              | Customer country                     |
| Latitude                      | Geographic latitude                  |
| Longitude                     | Geographic longitude                 |

---

# 🛠 Technologies Used

| Tool     | Purpose                                   |
| -------- | ----------------------------------------- |
| MySQL    | Data Storage and Analysis                 |
| SQL      | Data Cleaning and Querying                |
| Power BI | Dashboard Development                     |
| Excel    | Initial Data Exploration                  |
| GitHub   | Project Documentation and Version Control |

---

# 🧹 Data Preparation

The following preprocessing steps were performed before analysis:

### Data Cleaning

* Imported dataset into MySQL
* Verified data integrity
* Checked missing values
* Validated data types
* Examined duplicate records
* Standardized analytical fields

### KPI Engineering

A custom logistics KPI was created:

**Delay Days**

Delay_Days = Actual Shipping Days − Scheduled Shipping Days

Interpretation:

* Delay_Days > 0 → Late Delivery
* Delay_Days = 0 → On-Time Delivery
* Delay_Days < 0 → Early Delivery

---

# 📊 Key Performance Indicators (KPIs)

The following KPIs were developed:

### Financial KPIs

* Total Revenue
* Total Profit
* Profitability by Category

### Logistics KPIs

* Average Shipping Time
* Average Scheduled Shipping Time
* Average Delay
* Late Deliveries
* Late Delivery Rate

### Operational KPIs

* Orders by Category
* Revenue by Region
* Profit by Region
* High-Risk Deliveries

---

# 🗄 SQL Analysis

The analysis was performed using MySQL.

## Business Questions

### Revenue Analysis

* What is the total revenue generated?
* Which product categories generate the highest revenue?
* Which countries contribute the most revenue?

### Profitability Analysis

* What is the total profit generated?
* Which categories generate the highest profit?

### Delivery Performance Analysis

* What is the average shipping delay?
* Which categories experience the highest delays?
* Which locations experience the worst delivery performance?

### Risk Analysis

* What percentage of deliveries are late?
* Which categories exhibit the highest late-delivery risk?

---

## Example SQL Query

```sql
SELECT
    `Category Name`,
    SUM(`Sales per customer`) AS Revenue
FROM supply_chain
GROUP BY `Category Name`
ORDER BY Revenue DESC;
```

---

# 📈 Power BI Dashboard

The Power BI solution consists of four analytical pages designed for different business stakeholders.

---

## 1️⃣ Executive Summary

### KPIs

* Total Revenue
* Total Profit
* Total Orders
* Late Delivery Rate

### Visualizations

* Revenue by Category
* Profit by Category
* Delivery Status Distribution

### Business Purpose

Provide a high-level overview of operational and financial performance.

---

## 2️⃣ Delivery Analytics

### KPIs

* Average Delay
* Average Shipping Days
* Average Scheduled Shipping Days
* Late Orders

### Visualizations

* Delay by Category
* Delay by City
* Delivery Status Breakdown

### Business Purpose

Identify logistics bottlenecks and operational inefficiencies.

---

## 3️⃣ Geographic Analysis

### Visualizations

* Revenue Map
* Revenue by Country
* Profit by Country

### Business Purpose

Analyze regional performance and customer distribution.

---

## 4️⃣ Product Performance

### Visualizations

* Revenue by Category
* Profit by Category
* Revenue vs Profit Scatter Plot

### Business Purpose

Evaluate product profitability and growth opportunities.

---

# 📷 Dashboard Preview

## Executive Summary

Insert Screenshot Here

---

## Delivery Analytics

Insert Screenshot Here

---

## Geographic Analysis

Insert Screenshot Here

---

## Product Performance

Insert Screenshot Here

---

# 🔍 Key Findings

The analysis revealed several important insights:

### Revenue Performance

* Revenue generation was concentrated within a limited number of product categories.
* Certain categories consistently outperformed others in sales volume.

### Profitability

* High revenue does not always translate into high profitability.
* Some categories exhibited stronger margins despite lower sales.

### Delivery Performance

* Shipping delays varied significantly across categories and locations.
* Certain customer regions experienced higher average delays.

### Operational Risk

* Late-delivery risk was concentrated within specific operational segments.
* Delay monitoring is essential for maintaining customer satisfaction.

---

# 💡 Recommendations

Based on the analysis, the following recommendations are proposed:

### 1. Improve Logistics Efficiency

Focus on categories and locations with the highest average delays.

### 2. Monitor High-Risk Deliveries

Implement early-warning systems for shipments with elevated delay risk.

### 3. Optimize Product Portfolio

Allocate resources toward highly profitable categories.

### 4. Strengthen Regional Operations

Improve transportation planning in underperforming regions.

### 5. Expand KPI Monitoring

Use Power BI dashboards to continuously track supply chain performance.

---

# 📁 Repository Structure

```text
Supply-Chain-Analytics/
│
├── Dataset/
│   └── DataCoSupplyChainDataset.csv
│
├── SQL/
│   └── supply_chain_analysis.sql
│
├── PowerBI/
│   └── Supply_Chain.pbix
│
├── Images/
│   ├── executive_dashboard.png
│   ├── delivery_analytics.png
│   ├── geographic_analysis.png
│   ├── product_performance.png
│   ├── sql_revenue.png
│   ├── sql_profit.png
│   └── sql_delay_analysis.png
│
├── Report/
│   └── Supply_Chain_Analytics_Report.pdf
│
└── README.md
```

---

# 🚀 Future Improvements

Potential future enhancements include:

* Demand forecasting
* Inventory optimization
* Predictive delivery risk modeling
* Route optimization analysis
* Supplier performance evaluation
* Machine learning integration

---

# 👩‍💻 Author

### Shyama Khiari

Supply Chain Analytics Project

Skills Demonstrated:

* SQL
* Data Cleaning
* Data Analysis
* Business Intelligence
* Power BI
* KPI Development
* Dashboard Design
* Supply Chain Analytics

---

## ⭐ If you found this project interesting, feel free to star the repository.
