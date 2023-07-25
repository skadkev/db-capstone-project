/*Task 3: Create SQL queries to check available bookings based on user input*/

USE littlelemondb;

DELIMITER //
CREATE PROCEDURE AddValidBooking(IN bookingdate DATE, IN tablenumber INT)
BEGIN
	DECLARE count1 INT;

START TRANSACTION;

/*check if the two inputs exist within the table*/
    SELECT COUNT(BookingID) INTO count1 
    FROM Bookings 
    WHERE BookingDate = bookingdate AND TableNo = tablenumber;
    
/*create a new record in the bookings table if the booking does NOT exist*/
IF count1 = 0 THEN
    INSERT INTO Bookings
    SET 
    BookingDate = bookingdate,
    TableNo = tablenumber;
    COMMIT;
    SELECT CONCAT("Table ", tablenumber, " has been booked for ", bookingdate) AS "Booking status";

/*if the record already exists, then rollback the insert transaction*/
ELSE
	ROLLBACK;
    SELECT CONCAT("Table ", tablenumber, " is already booked - booking cancelled") AS "Booking status";
END IF;
END //
DELIMITER ;

/*'2023-07-22', 5; '2022-11-12', 3*/
/*CALL AddValidBooking('2023-07-22', 5);*/

