-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`,
	(
		SELECT
			`c_1`.`ParentID` + 1 as `V`
		FROM
			`Child` `c_1`
		LIMIT 1
	)
FROM
	`Parent` `p`

