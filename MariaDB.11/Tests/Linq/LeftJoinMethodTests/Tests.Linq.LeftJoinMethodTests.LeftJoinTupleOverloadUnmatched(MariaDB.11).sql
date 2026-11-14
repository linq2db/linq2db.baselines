-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Name`
FROM
	`Customer` `t`
		LEFT JOIN `Order` `o` ON `t`.`Id` = `o`.`CustomerId`
WHERE
	`o`.`Id` IS NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Customer` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`CustomerId`,
	`t1`.`Name`
FROM
	`Order` `t1`

