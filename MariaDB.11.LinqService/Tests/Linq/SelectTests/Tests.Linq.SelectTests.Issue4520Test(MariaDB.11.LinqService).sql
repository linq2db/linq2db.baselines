BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CASE
		WHEN NOT CASE
			WHEN `i`.`BoolValue` IS NOT NULL THEN `i`.`BoolValue`
			ELSE 0
		END AND (`i`.`IntValue` = (
			SELECT
				`p`.`IntValue`
			FROM
				`LinqDataTypes` `p`
			WHERE
				`p`.`ID` = 2
			LIMIT 1
		) OR `i`.`IntValue` IS NULL AND (
			SELECT
				`p`.`IntValue`
			FROM
				`LinqDataTypes` `p`
			WHERE
				`p`.`ID` = 2
			LIMIT 1
		) IS NULL)
			THEN 1
		ELSE 0
	END
FROM
	`LinqDataTypes` `i`
WHERE
	`i`.`ID` = 1

