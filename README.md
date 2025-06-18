# 🎵 Music Store Sales Analysis Using SQL

## 📊 Project Overview

This project analyzes a digital music store database using **SQL** to uncover insights into customer behavior, track performance, genre popularity, sales trends, and employee contributions. The purpose is to help stakeholders make data-driven business decisions using structured query analysis.

---

## 🗂️ Dataset Description

The dataset simulates a digital music store and includes the following key tables:

| Table Name   | Description                              |
|--------------|------------------------------------------|
| `Customer`   | Customer information including country, name, and email |
| `Invoice`    | Invoice-level sales data with total, date, and customer ID |
| `InvoiceLine`| Detailed breakdown of invoice contents (track, quantity, unit price) |
| `Track`      | Song metadata including genre and album |
| `Genre`      | Genre classification of tracks |
| `Album`      | Album details including artist ID |
| `Artist`     | Artist names linked to albums |
| `Employee`   | Store employees who serve as sales agents |
| `MediaType`  | File formats of tracks sold (e.g., MPEG, AAC) |

---

## 🔍 Key Analysis Areas

- 🎶 Top-selling tracks and genres
- 🌍 Country-wise revenue distribution
- 👥 Customer purchase behavior and segmentation
- 📈 Monthly/yearly revenue trends
- 🧑‍💼 Employee performance based on sales

---

## 🛠️ SQL Skills Demonstrated

- **Data Filtering & Sorting:** `WHERE`, `ORDER BY`
- **Joins:** `INNER JOIN`, `LEFT JOIN`
- **Grouping & Aggregation:** `GROUP BY`, `HAVING`, `SUM()`, `AVG()`
- **Window Functions:** `ROW_NUMBER()`, `RANK()` for top-N queries
- **Common Table Expressions (CTEs)**
- **Subqueries** for reusable logic
- **Date Functions** for trend analysis

---

## 🧪 Query Levels

The queries are structured into three levels:

### 🟢 Easy
- Total revenue by genre
- Number of customers per country

### 🟡 Intermediate
- Top 5 selling tracks
- Monthly sales trend using `strftime()` or `EXTRACT()`

### 🔴 Advanced
- Top customer by revenue per country using `ROW_NUMBER()`
- Genre popularity across countries using CTEs

> 📸 Screenshots of queries are available in the `screenshots/` folder.

---

## 💡 Insights Gained

- 🎸 Rock is the most popular genre globally
- 🇺🇸 USA, 🇨🇦 Canada, and 🇩🇪 Germany are top revenue-generating countries
- 💼 Some employees handle significantly more customers and sales than others
- 💰 A small number of customers contribute to large portions of revenue

---

## 🧰 Tools Used

- SQL (SQLite/PostgreSQL)
- DB Browser for SQLite / Jupyter Notebook
- Excel / Power BI (optional, for visualization)
- GitHub (for version control)

---

## 📁 Project Structure

```bash
music-store-analysis-sql/
│
├── queries/
│   ├── easy.sql
│   ├── intermediate.sql
│   └── advanced.sql
│
├── screenshots/
│   ├── easy_query.png
│   ├── intermediate_query.png
│   └── advanced_query.png
│
├── datasets/
│ 
│
└── README.md
