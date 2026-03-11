-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `t1`
	)
FROM
	`Parent` `p`

