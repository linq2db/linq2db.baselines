BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	EXISTS(
		SELECT 
			*
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` = 11
	) as `c1`

