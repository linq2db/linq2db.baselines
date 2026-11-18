-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @name Int32
SET     @name = 4

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`Money`
FROM
	`ParameterCastUnderCastTable` `t`
WHERE
	`t`.`Value` = CAST(@name AS CHAR(11))

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @name Int32
SET     @name = 4

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`t`.`Money`
FROM
	`ParameterCastUnderCastTable` `t`
WHERE
	`t`.`Money` = CAST(@name AS DECIMAL(29, 10))

