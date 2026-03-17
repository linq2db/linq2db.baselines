-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`Int` <=> @value

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableInt` <=> @value

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <=> @value

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` <=> @value

