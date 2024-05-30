BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t_1`.`c1`
FROM
	(
		SELECT
			Degrees(`t`.`MoneyValue`) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `t_1`
WHERE
	`t_1`.`c1` <> 0.10000000000000001

