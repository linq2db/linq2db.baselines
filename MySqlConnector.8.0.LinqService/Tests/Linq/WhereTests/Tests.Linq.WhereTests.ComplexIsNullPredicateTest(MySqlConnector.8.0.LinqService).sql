BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Person` `t1`
			WHERE
				CASE
					WHEN `t1`.`MiddleName` = '123' THEN 1
					ELSE 0
				END = CASE
					WHEN `t1`.`MiddleName` = '1' THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END as `c1`

