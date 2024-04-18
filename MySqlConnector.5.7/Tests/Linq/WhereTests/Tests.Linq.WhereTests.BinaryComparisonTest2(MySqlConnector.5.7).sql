BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Person` `_`
			WHERE
				(`_`.`FirstName` = `_`.`FirstName`) <> CASE
					WHEN `_`.`MiddleName` <> `_`.`LastName`
						THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END as `c1`

