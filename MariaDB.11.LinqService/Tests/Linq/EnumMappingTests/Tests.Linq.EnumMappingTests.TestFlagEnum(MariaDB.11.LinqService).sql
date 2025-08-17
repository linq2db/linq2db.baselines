BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`t`.`ID`,
	`t`.`IntValue`
FROM
	`LinqDataTypes` `t`
WHERE
	(`t`.`IntValue` & 1) <> 0

