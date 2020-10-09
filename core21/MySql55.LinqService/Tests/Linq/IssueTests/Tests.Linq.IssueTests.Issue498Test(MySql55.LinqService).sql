BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`x`.`ParentID`, 
	Count(*)
FROM
	`Child` `x`
		INNER JOIN `GrandChild` `y` ON `x`.`ParentID` = `y`.`ParentID` AND `x`.`ChildID` = `y`.`ChildID`
GROUP BY
	`x`.`ParentID`

