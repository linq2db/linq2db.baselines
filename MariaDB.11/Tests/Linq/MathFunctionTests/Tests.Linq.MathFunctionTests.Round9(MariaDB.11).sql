-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`MoneyValue`
FROM
	`LinqDataTypes` `t`
WHERE
	ROUND(`t`.`MoneyValue`, 1) <> 0

