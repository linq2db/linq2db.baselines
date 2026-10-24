-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`,
	NTILE(4) OVER ()
FROM
	`WindowFunctionTestEntity` `t`

