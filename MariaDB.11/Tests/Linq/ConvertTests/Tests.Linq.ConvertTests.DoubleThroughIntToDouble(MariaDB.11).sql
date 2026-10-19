-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	CAST(CAST(Floor(`r`.`F`) AS SIGNED) AS DOUBLE)
FROM
	`DoubleValue` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`F`
FROM
	`DoubleValue` `t1`

