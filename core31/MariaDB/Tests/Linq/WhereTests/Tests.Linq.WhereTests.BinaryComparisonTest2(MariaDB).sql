BeforeExecute
-- MariaDB MySql.Official MySql

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

