BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			`t1`.`ChildID`
		FROM
			`Child` `t1`
		LIMIT 1
	)
FROM
	`Parent` `p`

