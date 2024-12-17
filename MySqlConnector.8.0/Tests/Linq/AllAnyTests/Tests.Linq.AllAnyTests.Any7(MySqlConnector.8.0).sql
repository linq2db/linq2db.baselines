BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Child` `t1`
		)
			THEN 1
		ELSE 0
	END as `c1`

