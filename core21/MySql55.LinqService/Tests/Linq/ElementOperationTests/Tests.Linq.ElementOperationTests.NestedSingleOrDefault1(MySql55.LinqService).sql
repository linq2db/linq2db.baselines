BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	(
		SELECT DISTINCT 
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID`
	)
FROM
	`Parent` `p`

