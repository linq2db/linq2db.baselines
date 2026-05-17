-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

