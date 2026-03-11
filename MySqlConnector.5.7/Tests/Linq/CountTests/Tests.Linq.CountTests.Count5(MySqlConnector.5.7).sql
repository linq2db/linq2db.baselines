-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			`Child` `t1`
	) `t2`

