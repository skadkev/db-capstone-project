/*Task 2 from Create SQL queries to add and update bookings*/

USE littlelemondb;

DELIMITER //
CREATE PROCEDURE UpdateBooking(IN bookid INT, IN bookdate DATE)
BEGIN
UPDATE Bookings
SET BookingDate = bookdate
WHERE BookingID = bookid;
SELECT CONCAT("Booking ", bookid, " updated") AS Confirmation;
END //
DELIMITER ;

/*CALL UpdateBooking(14, '2023-07-27')*/