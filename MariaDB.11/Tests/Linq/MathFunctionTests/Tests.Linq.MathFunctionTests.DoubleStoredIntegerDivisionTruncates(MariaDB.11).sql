-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(`t`.`D` AS SIGNED) DIV 2
FROM
	`DoubleStoredIntegerTable` `t`
ORDER BY
	`t`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`D`
FROM
	`DoubleStoredIntegerTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`
FROM
	`DoubleStoredIntegerTable` `t`
WHERE
	CAST(`t`.`D` AS SIGNED) DIV 2 = -3
ORDER BY
	`t`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`D`
FROM
	`DoubleStoredIntegerTable` `t1`

