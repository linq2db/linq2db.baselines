-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`,
	ROW_NUMBER() OVER ()
FROM
	`WindowFunctionTestEntity` `t`

