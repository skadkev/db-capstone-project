/*Task 1 from Create SQL queries to add and update bookings*/

USE littlelemondb;

DELIMITER //
CREATE PROCEDURE AddBooking(IN bookid INT, IN custid INT, IN tablenum INT, IN employeeid INT, IN bookdate DATE)
BEGIN
INSERT INTO Bookings(BookingID, BookingDate, TableNo, CustomerID, EmployeeID)
VALUES
(bookid, bookdate, tablenum, custid, employeeid);
SELECT "New booking added" AS Confirmation;
END //
DELIMITER ;

/*CALL AddBooking(14, 3, 4, 7, "2023-07-26");*/





