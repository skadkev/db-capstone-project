/*Task 3 from Create SQL queries to add and update bookings*/

USE littlelemondb;

DELIMITER //
CREATE PROCEDURE CancelBooking(IN bookid INT)
BEGIN
DELETE FROM Bookings
WHERE BookingID = bookid;
SELECT CONCAT("Booking ", bookid, " cancelled") AS Confirmation;
END //
DELIMITER ;

/*CALL CancelBooking(9);*/
