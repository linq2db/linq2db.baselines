-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`g_1`.`ParentID`
		FROM
			`Child` `g_1`
		GROUP BY
			`g_1`.`ParentID`
	) `t1`
WHERE
	`t1`.`ParentID` > 2

