# 🛒 Smart Store Inventory Management System (SQL)

A robust relational database script simulating an interactive store inventory and sales tracking system.
This project demonstrates real-world database management concepts, focusing on data integrity, automated timestamps, and transaction control.

## 📌 Key Features & SQL Concepts Demonstrated

- Data Integrity & Constraints (`UNIQUE`):Implemented strict unique constraints on product codes to prevent duplication and ensure inventory accuracy.
- Automated Timestamps (`NOW()` / `DATETIME`):Utilized system timestamps to automatically log the exact date and time of inventory modifications and sales without manual input errors.
- Precision Data Types (`DECIMAL`): Configured optimized financial data types for product pricing.
- Transaction Control & ACID Properties:
  - `SET AUTOCOMMIT = 0`: Disabled automatic saving to create a secure temporary staging zone for multi-step inventory updates.
  - `ROLLBACK`: Demonstrated error recovery by reverting accidental/erroneous stock deductions before permanent storage.
  - `COMMIT`: Safely permanently committed validated inventory modifications to the database.

## 🛠️ Technologies Used
- Database Engine: MySQL 
- Tools: MySQL Workbench 
- Language: SQL
