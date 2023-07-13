use littlelemondb;

INSERT INTO Customers (CustomerID,FullName)
VALUES
(1, "Vanessa McCarthy"),
(2, "Marcos Romero"),
(3, "Hiroki Yamane"),
(4, "Anna Iversen"), 
(5, "Diana Pinto"),
(6, 'Joakim Iversen');

INSERT INTO Bookings (BookingID, CustomerID, BookingDate, TableNo, BookingSlot, NumberofGuests)
VALUES
(1, 4, '2022-10-11',  12, '19:00:00',1),
(2, 6, '2022-10-8', 6,  '19:00:00', 10),
(3, 1, '2022-10-8', 19, '15:00:00', 3),
(4, 2, '2022-10-9', 15,'17:30:00', 4),
(5, 3, '2022-10-7', 5, '18:30:00', 2),
(6, 5, '2022-10-10', 8,'20:00:00', 5);

INSERT INTO employees (EmployeeID, FullName, Role, Address, ContactNumber, Email, Salary)
VALUES
(1,'Mario Gollini','Manager','724, Parsley Lane, Old Town, Chicago, IL',351258074,'Mario.g@littlelemon.com',70000),
(2,'Adrian Gollini','Assistant Manager','334, Dill Square, Lincoln Park, Chicago, IL',351474048,'Adrian.g@littlelemon.com',65000),
(3,'Giorgos Dioudis','Head Chef','879 Sage Street, West Loop, Chicago, IL',351970582,'Giorgos.d@littlelemon.com',50000),
(4,'Fatma Kaya','Assistant Chef','132  Bay Lane, Chicago, IL',351963569,'Fatma.k@littlelemon.com',45000),
(5,'Elena Salvai','Head Waiter','989 Thyme Square, EdgeWater, Chicago, IL',351074198,'Elena.s@littlelemon.com',40000),
(6,'John Millar','Receptionist','245 Dill Square, Lincoln Park, Chicago, IL',351584508,'John.m@littlelemon.com',35000);



INSERT INTO contactdetails (ContactDetailsID, Email, PhoneNumber, Address, City, Country, CustomerID, EmployeeID)
VALUES
INSERT INTO contactdetails (ContactDetailsID, Email, PhoneNumber, Address, City, Country, CustomerID)
VALUES
(1, 'vanessa@yh.com', 0757536378,'Parsley Lane, Old Town', 'Chicago, IL', 'USA', 1),
(2, 'marcos@yh.com', 0757536379, 'Dill Square, Lincoln Park', 'Chicago, Illinois', 'USA', 2),
(3, 'hiroki@yh.com', 0757536376, 'Sage Street, West Loop', 'Chicago, Illinois', 'USA', 3),
(4, 'anna@yh.com', 0757536375, 'Bay Lane', 'Chicago, Illinois', 'USA', 4),
(5, 'diana@yh.com', 0757536374, 'Sage Street, West Loop', 'Chicago, Illinois', 'USA', 5),
(6, 'joakim@yh.com', 0757536378, 'Sage Street, West Loop', 'Chicago, Illinois', 'USA', 6);

INSERT INTO MenuItems (ItemID, CourseName, StarterName, DesertName, Price)
VALUES
(1, 'Greek salad','Olives','Greek yoghurt',25),
(2, 'Bean soup', 'Flatbread','Ice cream', 30),
(3, 'Pizza', 'Minestrone', 'Cheesecake', 25),
(4, 'Kabasa', 'Tomato bread','Vanilla Cake', 35);


INSERT INTO Menus (MenuID, ItemID, MenuName, Cuisine)
VALUES
(1, 1, 'Happy Day', 'Greek'),
(2, 2, 'African Rainbow', 'African'),
(3, 3, 'Freedom', 'American'),
(4, 4, 'Night life', 'Turkish');

INSERT INTO Orders (OrderID, OrderDate, Quantity, BillAmount, CustomerID, MenuID)
VALUES
(1, '2022-10-11', 5, 200, 4, 1),
(2, '2022-10-10', 10, 300, 5, 2),
(3, '2022-10-8', 1, 35, 1, 4);

INSERT INTO Delivery (DeliveryID, Date, Status, OrderID, EmployeeID)
VALUES
(1, '2022-10-11', 'In progress', 1, 5),
(2, '2022-10-10', 'Completed', 3, 3),
(3, '2022-10-8', 'Awaiting', 2, 6);