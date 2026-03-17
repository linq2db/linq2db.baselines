-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`String` <=> @value

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableString` <=> @value

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` <=> @value

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` <=> @value

