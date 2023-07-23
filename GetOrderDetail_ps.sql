/*Task 2 from Create optimized queries to manage and analyze data*/

USE littlelemondb;

PREPARE GetOrderDetail
FROM 
'SELECT OrderID, Quantity, BillAmount 
FROM Orders AS O 
INNER JOIN Bookings AS B ON O.BookingID = B.BookingID
WHERE B.CustomerID = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;


