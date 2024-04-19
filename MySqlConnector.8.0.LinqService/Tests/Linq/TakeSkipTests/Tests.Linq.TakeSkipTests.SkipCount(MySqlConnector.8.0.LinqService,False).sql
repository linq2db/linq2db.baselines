BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			`Child` `t1`
		LIMIT 2, 9223372036854775807
	) `t2`

