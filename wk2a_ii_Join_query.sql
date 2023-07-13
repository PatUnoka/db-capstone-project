/*Little Lemon need information from four tables on all customers with orders that cost more than $150*/
SELECT C.CustomerID, C.FullName, O.OrderID, O.BillAmount as Cost, M.MenuName, MI.CourseName, MI.StarterName
FROM Customers as C
	INNER JOIN Orders AS O ON C.CustomerID = O.CustomerID
	INNER JOIN Menus AS M ON M.MenuID = O.MenuID
	INNER JOIN MenuItems AS MI ON MI.ItemID = M.ItemID
WHERE BillAmount>150
ORDER BY BillAmount;
