-- SQL Filtering using HAVING (Exam Example)
CREATE DATABASE FamilyValue;
USE FamilyValue;

CREATE TABLE FamilyExpenses (
    ExpenseID INT PRIMARY KEY,
    MemberName VARCHAR(100),
    Category VARCHAR(50),
    Amount DECIMAL(10,2)
);

INSERT INTO FamilyExpenses VALUES
(1, 'Nazmul', 'Food', 500),
(2, 'Nazmul', 'Transport', 200),
(3, 'Rahim', 'Food', 300),
(4, 'Karim', 'Education', 1000),
(5, 'Salma', 'Food', 400),
(6, 'Rahim', 'Food', 250);

SELECT MemberName, SUM(Amount) AS TotalSpent
FROM FamilyExpenses
GROUP BY MemberName;

SELECT MemberName, SUM(Amount) AS TotalSpent
FROM FamilyExpenses
GROUP BY MemberName
HAVING SUM(Amount) > 700;

SELECT Category, SUM(Amount) AS TotalCategoryExpense
FROM FamilyExpenses
GROUP BY Category;

-- Categories where total expense > 800
SELECT Category, SUM(Amount) AS TotalCategoryExpense
FROM FamilyExpenses
GROUP BY Category
HAVING SUM(Amount) > 800;
