/*Task 2 from the Capstone exercise "Create a virtual table to summarize data"*/

USE littlelemondb;

SELECT 
    CI.CustomerID,
    CONCAT(CI.FirstName, ' ', CI.LastName) AS 'Customer Name',
    O.OrderID,
    O.BillAmount AS Cost,
    M.Cuisine AS 'Menu Name',
    MI.ItemName,
    MI.ItemType
FROM
    CustomerInfo AS CI
        INNER JOIN
    Bookings AS B ON CI.CustomerID = B.CustomerID
        INNER JOIN
    Orders AS O ON B.BookingID = O.BookingID
        INNER JOIN
    MenuItems AS MI ON O.ItemID = MI.ItemID
        INNER JOIN
    Menus AS M ON MI.ItemID = M.ItemID
WHERE
    BillAmount > 150
ORDER BY BillAmount ASC;