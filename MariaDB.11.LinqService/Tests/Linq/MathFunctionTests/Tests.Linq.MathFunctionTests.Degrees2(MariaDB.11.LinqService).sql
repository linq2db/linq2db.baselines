BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Floor(`t`.`Value_1`)
FROM
	(
		SELECT
			Degrees(`p`.`MoneyValue`) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`Value_1` <> 0.10000000000000001

