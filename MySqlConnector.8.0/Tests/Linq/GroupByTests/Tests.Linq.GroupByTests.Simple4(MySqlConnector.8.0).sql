-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

