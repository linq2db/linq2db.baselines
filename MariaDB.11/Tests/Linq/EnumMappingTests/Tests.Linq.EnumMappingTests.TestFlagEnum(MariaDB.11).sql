-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`ID`,
	`t`.`IntValue`
FROM
	`TestTable5` `t`
WHERE
	CAST(`t`.`IntValue` & 1 AS SIGNED) <> 0

