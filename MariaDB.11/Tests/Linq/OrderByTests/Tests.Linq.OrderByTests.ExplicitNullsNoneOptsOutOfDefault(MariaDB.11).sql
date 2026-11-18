-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`Id`
FROM
	`NullsTable` `x`
ORDER BY
	`x`.`Value`,
	`x`.`Id`
LIMIT @take

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`Id`
FROM
	`NullsTable` `x`
ORDER BY
	`x`.`Value`,
	`x`.`Id`
LIMIT @take

