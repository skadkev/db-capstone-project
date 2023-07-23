/*Task 3 from the Capstone exercise "Create a virtual table to summarize data"*/

USE littlelemondb;

SELECT 
    MenuID, Cuisine
FROM
    Menus
WHERE
    ItemID = ANY (SELECT 
            ItemID
        FROM
            Orders
        WHERE
            Quantity > 2);
