BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`x`.`ID`,
	`x`.`BigIntValue`
FROM
	`LinqDataTypes` `x`
WHERE
	`x`.`BigIntValue` IN (0, 1)

