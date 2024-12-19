BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Parent` `p`
		)
			THEN 1
		ELSE 0
	END as `c1`

