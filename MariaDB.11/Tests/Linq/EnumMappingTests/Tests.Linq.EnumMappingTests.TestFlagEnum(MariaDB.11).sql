-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`ID`,
	`t`.`IntValue`
FROM
	`LinqDataTypes` `t`
WHERE
	(`t`.`IntValue` & 1) <> 0

