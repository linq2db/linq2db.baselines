-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`
FROM
	(
		SELECT DISTINCT
			`ch`.`ParentID`
		FROM
			`Child` `ch`
	) `t1`
ORDER BY
	`t1`.`ParentID`

