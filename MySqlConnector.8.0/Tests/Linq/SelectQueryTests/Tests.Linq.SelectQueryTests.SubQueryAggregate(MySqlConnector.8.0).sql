-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
LIMIT 2

