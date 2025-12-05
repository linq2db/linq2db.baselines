-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

