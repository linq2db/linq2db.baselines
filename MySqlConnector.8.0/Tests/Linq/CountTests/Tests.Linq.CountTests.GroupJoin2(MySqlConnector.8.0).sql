-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	(
		SELECT
			COUNT(*) as `Count1`
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID`
	),
	(
		SELECT
			COUNT(*) as `Count2`
		FROM
			`GrandChild` `g_1`
		WHERE
			`p`.`ParentID` = `g_1`.`ParentID`
	)
FROM
	`Parent` `p`

