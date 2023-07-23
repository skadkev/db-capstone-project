/*Task 1 from Create optimized queries to manage and analyze data*/

USE littlelemondb;

CREATE PROCEDURE GetMaxQuantity()
SELECT
MAX(Quantity)
FROM Orders;

/*CALL GetMaxQuantity();*/


