-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`Issue5351Table` `x`
SET
	`x`.`Test` = NULL
WHERE
	`x`.`Id` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`Id`,
	`x`.`Test`
FROM
	`Issue5351Table` `x`
WHERE
	`x`.`Id` = 1
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`Issue5351Table` `x`
SET
	`x`.`Test` = 'X'
WHERE
	`x`.`Id` = 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`Id`,
	`x`.`Test`
FROM
	`Issue5351Table` `x`
WHERE
	`x`.`Id` = 2
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`Id`,
	`x`.`Test`
FROM
	`Issue5351Table` `x`
WHERE
	`x`.`Test` = 'X'

