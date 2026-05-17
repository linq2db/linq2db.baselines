-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`TableWithConverterValue` `x`
SET
	`x`.`Test1` = NULL
WHERE
	`x`.`Id` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`Id`,
	`x`.`NoConversion`,
	`x`.`Test1`,
	`x`.`Test2`
FROM
	`TableWithConverterValue` `x`
WHERE
	`x`.`Id` = 1
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`TableWithConverterValue` `x`
SET
	`x`.`Test1` = 'X'
WHERE
	`x`.`Id` = 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`Id`,
	`x`.`NoConversion`,
	`x`.`Test1`,
	`x`.`Test2`
FROM
	`TableWithConverterValue` `x`
WHERE
	`x`.`Id` = 2
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`Id`,
	`x`.`NoConversion`,
	`x`.`Test1`,
	`x`.`Test2`
FROM
	`TableWithConverterValue` `x`
WHERE
	`x`.`Test1` = 'X'

