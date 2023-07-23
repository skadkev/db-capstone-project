/*Task 3 from Create optimized queries to manage and analyze data*/

USE littlelemondb;

DELIMITER //
CREATE PROCEDURE CancelOrder(IN OrderNumber INT, OUT Confirmation VARCHAR(45))
BEGIN
SELECT
CONCAT("Order ", OrderID, " is cancelled") INTO Confirmation
FROM orders
WHERE OrderID = OrderNumber;
DELETE FROM orders
WHERE OrderId = OrderNumber;
END //
DELIMITER ;

CALL CancelOrder(7, @Confirmation);
SELECT @Confirmation AS Confirmation;
