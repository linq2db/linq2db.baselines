BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`String` <=> @value

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableString` <=> @value

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` <=> @value

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` <=> @value

