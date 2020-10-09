BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	`t`.`ParentID`, 
	(
		SELECT 
			Count(*)
		FROM
			`Child` `t1`
		WHERE
			`t`.`ParentID` = `t1`.`ParentID`
	)
FROM
	`Parent` `t`

BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	`t`.`ParentID`, 
	(
		SELECT 
			Count(*)
		FROM
			`Child` `t1`
		WHERE
			`t`.`ParentID` = `t1`.`ParentID`
	)
FROM
	`Parent` `t`

