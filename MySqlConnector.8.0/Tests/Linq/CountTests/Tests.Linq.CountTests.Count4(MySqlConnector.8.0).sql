BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `t1`
	)
FROM
	`Parent` `p`

