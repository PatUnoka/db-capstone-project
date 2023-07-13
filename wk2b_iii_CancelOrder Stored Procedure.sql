/*iii. create a stored procedure called CancelOrder to delete an order record based on the user 
input of the order id.*/

DROP PROCEDURE IF EXISTS CancelOrder;
DELIMITER //
CREATE PROCEDURE CancelOrder(id INT)
BEGIN
    DELETE FROM Orders WHERE OrderID= id;
	SELECT CONCAT("Order ",id," is cancelled") AS Confirmation;
END //
DELIMITER ;

/*Call the Stored Procedure*/
Call CancelOrder(3);