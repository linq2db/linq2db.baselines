-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	NULLIF(`s`.`Int`, 2)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` = 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <> 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	NULLIF(`s`.`Int`, 4)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` = 4

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <> 4

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`s`.`Int`
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	1 = 0

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	NULLIF(`s`.`NullableInt`, 2)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` = 2 OR `s`.`NullableInt` IS NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT (`s`.`NullableInt` = 2 OR `s`.`NullableInt` IS NULL)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	NULLIF(`s`.`NullableInt`, 4)
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` = 4 OR `s`.`NullableInt` IS NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT (`s`.`NullableInt` = 4 OR `s`.`NullableInt` IS NULL)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`s`.`NullableInt`
FROM
	`Src` `s`
ORDER BY
	`s`.`Int`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` IS NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` IS NOT NULL

