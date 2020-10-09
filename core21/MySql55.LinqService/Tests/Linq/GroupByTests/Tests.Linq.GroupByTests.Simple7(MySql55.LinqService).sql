BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`t1`.`ParentID`, 
	`t1`.`ChildID`
FROM
	`GrandChild` `t1`
GROUP BY
	`t1`.`ParentID`,
	`t1`.`ChildID`

