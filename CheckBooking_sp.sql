/*Task 2: Create SQL queries to check available bookings based on user input*/

USE littlelemondb;

DELIMITER //
CREATE PROCEDURE CheckBooking(IN bookingdate DATE, IN tablenumber INT)
BEGIN
	DECLARE count1 INT;

/*check if two inputs exist in the table*/
	SELECT COUNT(BookingID) INTO count1 
	FROM Bookings 
	WHERE BookingDate = bookingdate AND TableNo = tablenumber;

/*check if count1 meets the conditions*/
IF count1 > 0 THEN
	SELECT CONCAT("Table ", tablenumber, " is already booked") AS "Booking status";
ELSE 
	SELECT CONCAT("Table ", tablenumber, " is available for booking") AS "Booking status";
END IF;
END //
DELIMITER ;

/*CALL CheckBooking('2022-10-10', 5);*/
