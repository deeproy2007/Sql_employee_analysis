# Employee SQL Analysis

A complete SQL project containing table creation, sample employee data, and multiple analytical SQL queries. This project helps you practice filtering, aggregation, grouping, and real-world employee data analysis using SQL.

---

## 📌 Project Overview

This project includes:

- Creation of an `employees` table  
- Insertion of 10 sample employee records  
- 16 SQL analysis queries covering:
  - Salary filtering  
  - Department-wise insights  
  - Pattern matching with LIKE  
  - Summaries using SUM, AVG, MAX, MIN  
  - GROUP BY and HAVING  
  - Sorting and limiting results  

---

## 📁 File Included

**`Sql_employee_analysis.sql`**  
Contains:
1. Database selection  
2. Table creation  
3. Data insertion  
4. All SQL queries (1–16)

---

## 🧱 Table Structure

| Column        | Type           | Description                         |
|---------------|----------------|-------------------------------------|
| id            | INT (PK)       | Unique employee ID                  |
| name          | VARCHAR(50)    | Employee name                       |
| department    | VARCHAR(30)    | Department name                     |
| salary        | DECIMAL(10,2)  | Monthly salary                      |
| joining_date  | DATE           | Employee joining date               |

---

## ▶️ How to Run

1. Open MySQL Workbench / CLI / phpMyAdmin.  
2. Select database:
   ```sql
   USE student;
