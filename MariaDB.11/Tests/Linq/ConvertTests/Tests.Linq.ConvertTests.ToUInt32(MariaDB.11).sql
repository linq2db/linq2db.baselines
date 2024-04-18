BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Cast(Floor(`t`.`MoneyValue`) as UNSIGNED)
FROM
	`LinqDataTypes` `t`
WHERE
	Cast(Floor(`t`.`MoneyValue`) as UNSIGNED) > 0

