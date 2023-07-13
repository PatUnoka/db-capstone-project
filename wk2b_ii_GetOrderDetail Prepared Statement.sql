/*ii. Create a Prepared statement GetOrderDetails that returns the quantity and the order cost from the 
Orders table for a specified customerID */

PREPARE GetOrderDetail
FROM 'SELECT OrderID, Quantity, BillAmount
FROM Orders
WHERE CustomerID = ?';

/*create a variable called id and assign it value of 1 and execute the prepared statement */

set @id = 1;

EXECUTE GetOrderDetail USING @id;


