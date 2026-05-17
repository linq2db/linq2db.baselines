-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`TableWithConverterValue` `x`
SET
	`x`.`Test1` = CASE
		WHEN (`x`.`Id` > 0) THEN 'X'
		ELSE NULL
	END
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

