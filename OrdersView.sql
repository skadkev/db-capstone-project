/*Task 1 from the Capstone exercise "Create a virtual table to summarize data"*/

USE littlelemondb;

CREATE VIEW OrdersView AS
    SELECT 
        OrderID, Quantity, BillAmount AS Cost
    FROM
        orders
    WHERE
        Quantity > 2;
        
SELECT * FROM OrdersView;

