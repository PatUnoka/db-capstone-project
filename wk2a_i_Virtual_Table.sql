/*virtual table called OrdersView that focuses on OrderID, Quantity and 
Cost columns within the Orders table for all orders with a quantity greater than 2*/
CREATE VIEW OrdersView AS 
	SELECT OrderID, quantity, BillAmount 
    FROM Orders
    WHERE quantity>2;

select * from ordersview;