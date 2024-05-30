BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	(
		SELECT
			`c_1`.`ParentID` + 1
		FROM
			`Child` `c_1`
		LIMIT 1
	)
FROM
	`Parent` `p`

