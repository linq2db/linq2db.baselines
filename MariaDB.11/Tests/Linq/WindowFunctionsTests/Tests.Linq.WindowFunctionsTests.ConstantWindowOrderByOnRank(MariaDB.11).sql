-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`,
	RANK() OVER (ORDER BY (
		SELECT
			1
	))
FROM
	`WindowFunctionTestEntity` `t`

