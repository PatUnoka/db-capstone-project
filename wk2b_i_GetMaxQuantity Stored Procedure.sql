/* i. create a procedure that displays the maximum ordered quantity in the Orders table. */
DROP PROCEDURE IF EXISTS GetMaxQuantity;

CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(Quantity) as 'Max Quantity in Order' 
FROM Orders;

/*Call the Stored Procedure*/

CALL GetMaxQuantity();