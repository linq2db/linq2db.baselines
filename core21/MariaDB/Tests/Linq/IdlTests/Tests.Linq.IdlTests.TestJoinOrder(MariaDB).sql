BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`x_2`.`ChildID`, 
	`x_2`.`ParentID`, 
	`x_1`.`PersonID`, 
	`x_1`.`FirstName`
FROM
	`GrandChild` `x_2`
		INNER JOIN `Person` `x` ON `x_2`.`ParentID` = `x`.`PersonID`
		INNER JOIN `Person` `x_1` ON `x_2`.`ChildID` = `x_1`.`PersonID`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`x_2`.`ChildID`, 
	`x_2`.`ParentID`, 
	`x`.`PersonID`, 
	`x`.`FirstName`
FROM
	`GrandChild` `x_2`
		INNER JOIN `Person` `x` ON `x_2`.`ParentID` = `x`.`PersonID`
		INNER JOIN `Person` `x_1` ON `x_2`.`ChildID` = `x_1`.`PersonID`

