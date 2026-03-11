-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`Name`,
	`o`.`Id`
FROM
	`Customer` `x`
		LEFT JOIN `Order` `o` ON `x`.`Id` = `o`.`CustomerId`

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

