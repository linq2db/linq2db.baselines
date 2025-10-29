-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`g_2`.`Key_1`
FROM
	(
		SELECT
			`g_1`.`ParentID` as `Key_1`,
			COUNT(*) as `COUNT_1`
		FROM
			`Child` `g_1`
		GROUP BY
			`g_1`.`ParentID`
	) `g_2`
WHERE
	`g_2`.`COUNT_1` > 3 OR `g_2`.`Key_1` = 1

