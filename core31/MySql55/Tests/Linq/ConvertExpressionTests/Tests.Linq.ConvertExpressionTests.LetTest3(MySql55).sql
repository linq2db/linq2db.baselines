BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	(
		SELECT
			`p`.`ParentID`
		FROM
			`Child` `p`
		LIMIT 1
	)
FROM
	`Parent` `p_1`

