BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			`Child` `t1`
		LIMIT 2, 5
	) `t2`

