BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				`Person` `t1`
			WHERE
				`t1`.`MiddleName` <> `t1`.`LastName` OR `t1`.`MiddleName` IS NULL
		)
			THEN 1
		ELSE 0
	END as `c1`

