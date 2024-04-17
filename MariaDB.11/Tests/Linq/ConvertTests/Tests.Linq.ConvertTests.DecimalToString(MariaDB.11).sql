BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Cast(`t`.`MoneyValue` as CHAR(31))
FROM
	`LinqDataTypes` `t`
WHERE
	Char_Length(Cast(`t`.`MoneyValue` as CHAR(31))) > 0

