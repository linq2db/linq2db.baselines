-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Parent` `t1`
	) as `Parents`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `t2`
	) as `Children`

