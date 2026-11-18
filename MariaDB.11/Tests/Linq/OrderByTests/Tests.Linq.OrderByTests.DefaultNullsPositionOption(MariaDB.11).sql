-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`Id`
FROM
	`NullsTable` `x`
ORDER BY
	CASE
		WHEN `x`.`Value` IS NULL THEN 1
		ELSE 0
	END,
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
	CASE
		WHEN `x`.`Value` IS NULL THEN 1
		ELSE 0
	END,
	`x`.`Value`,
	`x`.`Id`
LIMIT @take

