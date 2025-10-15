# Magontsana Kicks - SQL Store Database

## Project Overview
This project simulates a sneaker store called **Magontsana Kicks**, which sells popular sneaker brands like Nike, Adidas, Puma, and more. The goal of the project was to create a database for the store, including a table to store sneaker details, inserting at least 15 items, and running SQL queries to analyze and retrieve data.

The project demonstrates practical SQL skills, including:
- Database schema creation
- Data insertion
- Sorting and filtering queries
- Aggregation and statistics (average price, total stock)

---
![Image Alt](https://github.com/Rangwako/MagontsanaKicks/blob/07b2f47ef33fb2c29851b57b083b39d72d76e5f5/store.PNG)
## Database Schema

The database contains a single table `sneakers` with the following columns:

| Column     | Data Type | Description                     |
|------------|-----------|---------------------------------|
| SneakerID  | INTEGER   | Primary Key - unique sneaker ID |
| Brand      | TEXT      | Brand name (e.g., Nike, Adidas)|
| Model      | TEXT      | Sneaker model name              |
| Size       | INTEGER   | Sneaker size                     |
| Price      | INTEGER   | Price of the sneaker             |
| Stock      | INTEGER   | Quantity available in stock      |

---

## Sample Data

The database contains 15 sneakers as sample data:

| SneakerID | Brand         | Model          | Size | Price | Stock |
|-----------|---------------|----------------|------|-------|-------|
| 1         | Nike          | Air Force 1    | 9    | 1900  | 20    |
| 2         | Adidas        | Ultraboost 22  | 7    | 2300  | 14    |
| 3         | Puma          | RS-X           | 10   | 1600  | 20    |
| 4         | New Balance   | 550            | 9    | 2100  | 17    |
| 5         | Nike          | Air Jordan 1   | 8    | 3000  | 19    |
| 6         | Reebok        | Classic Leather| 7    | 1600  | 23    |
| 7         | Converse      | Chuck Taylor   | 7    | 1300  | 38    |
| 8         | Adidas        | Stan Smith     | 8    | 1600  | 22    |
| 9         | Vans          | Old Skool      | 9    | 1300  | 28    |
| 10        | Nike          | Dunk Low       | 10   | 2800  | 8     |
| 11        | Asics         | Gel-Lyte III   | 9    | 1600  | 15    |
| 12        | Fila          | Disruptor II   | 8    | 1600  | 16    |
| 13        | Under Armour  | Curry Flow 9   | 10   | 2500  | 9     |
| 14        | Adidas        | Yeezy 350      | 7    | 4900  | 5     |
| 15        | Nike          | ZoomX Vaporfly | 8    | 3990  | 6     |

*Full SQL inserts are available in the file `magontsana_kicks.sql`.*

---

## Example Queries & Sample Outputs

### 1. Order sneakers by price ascending
```sql
SELECT * FROM sneakers
ORDER BY Price ASC;

Sample Output:

| SneakerID | Brand    | Model        | Price |
| --------- | -------- | ------------ | ----- |
| 7         | Converse | Chuck Taylor | 1300  |
| 9         | Vans     | Old Skool    | 1300  |
| 3         | Puma     | RS-X         | 1600  |
| ...       | ...      | ...          | ...   |


2. Most expensive sneaker

SELECT Brand, Model, Price
FROM sneakers
WHERE Price = (SELECT MAX(Price) FROM sneakers);

Sample Output:

| Brand  | Model     | Price |
| ------ | --------- | ----- |
| Adidas | Yeezy 350 | 4900  |

3. Average price of sneakers

SELECT AVG(Price) AS Average_Price FROM sneakers;

Sample Output:

| Average_Price |
| ------------- |
| 2272.67       |

4. Total stock in store

SELECT SUM(Stock) AS Total_Stock FROM sneakers;

Sample Output:

| Total_Stock |
| ----------- |
| 260         |

5. Filter sneakers by brand (Nike)

SELECT * FROM sneakers
WHERE Brand = 'Nike';

Sample Output:

| SneakerID | Brand | Model          | Price | Stock |
| --------- | ----- | -------------- | ----- | ----- |
| 1         | Nike  | Air Force 1    | 1900  | 20    |
| 5         | Nike  | Air Jordan 1   | 3000  | 19    |
| 10        | Nike  | Dunk Low       | 2800  | 8     |
| 15        | Nike  | ZoomX Vaporfly | 3990  | 6     |


How to Use:

Clone or download this repository.

Open the file magontsana_kicks.sql in any SQL environment (SQLite, MySQL, PostgreSQL).

Execute the SQL statements in order:

Create table

Insert data

Run queries

Observe outputs and experiment with additional queries as needed.

Skills Demonstrated

Database design and schema creation

SQL inserts and table population

Data querying, filtering, and sorting

Aggregation functions for statistics

Author

Magontsana Kicks SQL Project
Created by [Simon Gontse Rangwako]
