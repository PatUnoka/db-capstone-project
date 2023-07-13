/*2.  To check whether a table in the restaurant is already booked.*/
DROP PROCEDURE IF EXISTS CheckBooking ;
DELIMITER //
CREATE PROCEDURE CheckBooking(mybookdate DATE, mytable INT)
BEGIN
IF EXISTS (SELECT * FROM Bookings WHERE BookingDate = mybookdate AND TableNo=mytable)
	THEN SELECT CONCAT("Table ", mytable, " is booked") AS 'Booking Status';
ELSE
	SELECT CONCAT("Table ", mytable," is not booked") AS 'Booking Status';
END IF;
END //
DELIMITER ;

Call CheckBooking('2022-11-12', 3);