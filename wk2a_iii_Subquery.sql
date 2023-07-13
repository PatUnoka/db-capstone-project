/*find all menu items for which more than 2 orders have been placed. You can carry out this task by creating a
 subquery that lists the menu names from the menus table for any order quantity with more than 2*/
SELECT MenuName
FROM Menus
WHERE MenuID = ANY(SELECT MenuID FROM Orders WHERE Quantity>2);