
--- 1. Retrieve bookings with the appropriate customer information, sorted by the total amount of payments made by the customer:

SELECT B.*, C.FirstName, C.LastName, SUM(P.Amount) AS TotalPaymentAmount
FROM Bookings B
INNER JOIN Customers C ON B.CustomerID = C.CustomerID
LEFT JOIN Payments P ON B.BookingID = P.BookingID
GROUP BY B.BookingID, C.CustomerID, C.FirstName, C.LastName
ORDER BY TotalPaymentAmount DESC;

--- 2. Shows the total number of bookings and the total amount paid for each customer:

SELECT C.CustomerID, C.FirstName, C.LastName, COUNT(*) AS TotalBookings, SUM(P.Amount) AS TotalPaid
FROM Customers C
LEFT JOIN Bookings B ON C.CustomerID = B.CustomerID
LEFT JOIN Payments P ON B.BookingID = P.BookingID
GROUP BY C.CustomerID, C.FirstName, C.LastName;

--- 3. Display the customer ID, name and number of reservations for customers who have made at least 2 reservations:

SELECT B.CustomerID, C.FirstName, C.LastName, COUNT(*) AS TotalBookings
FROM Customers C
JOIN Bookings B ON C.CustomerID = B.CustomerID
GROUP BY B.CustomerID, C.FirstName, C.LastName
HAVING COUNT(*) >= 2;

--- 4. Show customer names and the total amount paid by them for bookings that exceeded the average payment amount:

SELECT FirstName, LastName, SUM(Amount) AS TotalPaid
FROM Customers C
JOIN Bookings B ON C.CustomerID = B.CustomerID
JOIN Payments P ON B.BookingID = P.BookingID
GROUP BY FirstName, LastName
HAVING SUM(Amount) > (SELECT AVG(Amount) FROM Payments);

--- 5. Display the total amount of payments for each customer and year (last 3 years) in a pivot table format:

SELECT
  CustomerID,
  SUM(CASE WHEN EXTRACT(YEAR FROM PayTime) = 2021 THEN Amount END) AS Amount_2021,
  SUM(CASE WHEN EXTRACT(YEAR FROM PayTime) = 2022 THEN Amount END) AS Amount_2022,
  SUM(CASE WHEN EXTRACT(YEAR FROM PayTime) = 2023 THEN Amount END) AS Amount_2023
FROM Payments
GROUP BY CustomerID;

--- 6. Display the number of bookings per month for each room in a pivot table format:

CREATE EXTENSION IF NOT EXISTS tablefunc;
SELECT *
FROM crosstab(
  'SELECT RoomNumber, EXTRACT(MONTH FROM BookTime) AS ReservationMonth, COUNT(*) AS ReservationCount
   FROM Bookings
   GROUP BY RoomNumber, ReservationMonth
   ORDER BY RoomNumber, ReservationMonth',
  'SELECT generate_series(1, 12)'
) AS PivotTable (RoomNumber int, "Jan" bigint, "Feb" bigint, "Mar" bigint,
"Apr" bigint, "May" bigint, "Jun" bigint, "Jul" bigint, "Aug" bigint, "Sep" bigint,
"Oct" bigint, "Nov" bigint, "Dec" bigint);

--- 7. Finding all decayed rooms today:

WITH RECURSIVE checkout_rooms AS (
  SELECT B.RoomNumber
  FROM Bookings B
  WHERE Checkout = CURRENT_DATE
)
SELECT *
FROM checkout_rooms;

--- 8. Calculation of total expenses for each servant:

WITH RECURSIVE Expenses AS (
  SELECT ServantID, Amount
  FROM Expense
  UNION ALL
  SELECT E.ServantID, Amount + E.Amount
  FROM Expense E
)
SELECT ServantID, SUM(Amount) AS TotalExpenses
FROM Expenses
GROUP BY ServantID;
