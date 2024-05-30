BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`GrandChild` `g_1`
		WHERE
			`g_1`.`ChildID` = `c_1`.`ChildID`
	)
FROM
	`Child` `c_1`

