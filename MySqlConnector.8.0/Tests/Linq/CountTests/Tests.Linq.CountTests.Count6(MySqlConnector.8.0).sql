-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			`g_1`.`ParentID`
		FROM
			`Child` `g_1`
		WHERE
			`g_1`.`ParentID` > 2
	) `t1`

