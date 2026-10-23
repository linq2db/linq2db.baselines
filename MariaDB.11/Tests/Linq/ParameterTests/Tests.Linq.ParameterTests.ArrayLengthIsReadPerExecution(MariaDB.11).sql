-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @arr Int32
SET     @arr = 1

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`ArrayLengthTable` `t`
WHERE
	`t`.`Id` = @arr
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @arr Int32
SET     @arr = 2

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`ArrayLengthTable` `t`
WHERE
	`t`.`Id` = @arr
LIMIT 2

