-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @In VarChar -- AnsiString
SET     @In = NULL

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (@In, @In)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @NotIn VarChar -- AnsiString
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` NOT IN (@NotIn, @NotIn)

