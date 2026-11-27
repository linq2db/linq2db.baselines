-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`i`.`Id`
FROM
	`InEnumTable` `i`
WHERE
	`i`.`Value` IN (1, 3)
ORDER BY
	`i`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`InEnumTable` `t1`

