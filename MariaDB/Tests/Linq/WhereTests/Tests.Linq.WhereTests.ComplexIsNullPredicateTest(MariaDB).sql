BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Person` `_`
			WHERE
				CASE
					WHEN `_`.`MiddleName` = '123' THEN 1
					ELSE 0
				END = CASE
					WHEN (`_`.`MiddleName` = '1' OR `_`.`MiddleName` = 'test' AND (`_`.`MiddleName` <> '1' OR `_`.`MiddleName` IS NULL))
						THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END as `c1`

