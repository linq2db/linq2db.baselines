-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`g_2`.`Key_1`
FROM
	(
		SELECT DISTINCT
			`g_1`.`ParentID` as `Key_1`
		FROM
			`Child` `g_1`
	) `g_2`
ORDER BY
	`g_2`.`Key_1`

