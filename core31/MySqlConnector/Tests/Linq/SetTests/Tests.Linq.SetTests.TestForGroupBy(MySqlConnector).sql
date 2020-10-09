BeforeExecute
-- MySqlConnector MySql

SELECT 
	`x`.`ParentID`, 
	`x`.`ChildID`, 
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (2)

BeforeExecute
-- MySqlConnector MySql

SELECT 
	`x`.`ParentID`, 
	`x`.`ChildID`, 
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (3)

