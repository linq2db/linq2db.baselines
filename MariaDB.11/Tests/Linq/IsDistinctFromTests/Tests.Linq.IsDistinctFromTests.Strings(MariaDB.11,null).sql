-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` IS NOT NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` IS NOT NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` IS NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` IS NULL

