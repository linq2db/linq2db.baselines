-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			`p`.`Value1`
		FROM
			`Parent` `p`
		LIMIT 1
	) as `f1`

