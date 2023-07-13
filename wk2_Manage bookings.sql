USE LittleLemonDB;

DROP PROCEDURE IF EXISTS UpdateBooking;

DELIMITER //
CREATE PROCEDURE UpdateBooking(IN mybookingid INT, IN mybookingdate DATE)
BEGIN
UPDATE Bookings SET Date = mybookingdate WHERE BookingID = mybookingid;
SELECT CONCAT("Booking ", mybookingid, " is updated") AS "Confirmation";
END //
DELIMITER ;

CALL UpdateBooking(3, 1, "2022-12-17");

SELECT * FROM Bookings;