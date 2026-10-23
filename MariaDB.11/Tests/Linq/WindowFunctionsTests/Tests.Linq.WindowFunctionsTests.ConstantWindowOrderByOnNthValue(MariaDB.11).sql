-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`,
	NTH_VALUE(`t`.`IntValue`, 2) OVER ()
FROM
	`WindowFunctionTestEntity` `t`

