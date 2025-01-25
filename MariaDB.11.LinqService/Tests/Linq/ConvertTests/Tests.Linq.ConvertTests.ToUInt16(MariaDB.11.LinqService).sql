BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p_1`.`c1`
FROM
	(
		SELECT
			CAST(Floor(`p`.`MoneyValue`) AS UNSIGNED) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `p_1`
WHERE
	`p_1`.`c1` > 0

