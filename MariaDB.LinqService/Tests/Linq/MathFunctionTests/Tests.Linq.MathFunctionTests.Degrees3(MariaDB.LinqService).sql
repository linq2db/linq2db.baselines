BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t_1`.`c1`
FROM
	(
		SELECT
			Degrees(CAST(Floor(`t`.`MoneyValue`) AS SIGNED)) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	CAST(`t_1`.`c1` AS Decimal(29, 10)) <> 0.10000000000000001

