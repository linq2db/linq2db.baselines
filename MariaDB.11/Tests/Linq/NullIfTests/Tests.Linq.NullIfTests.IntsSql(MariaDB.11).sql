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
	`Src` `x`
WHERE
	`x`.`Int` = 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	`x`.`Int` <> 2

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
	`Src` `x`
WHERE
	`x`.`Int` = 4

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	`x`.`Int` <> 4

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
	`Src` `x`
WHERE
	1 = 0

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `x`

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
	`Src` `x`
WHERE
	`x`.`NullableInt` = 2 OR `x`.`NullableInt` IS NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	NOT (`x`.`NullableInt` = 2 OR `x`.`NullableInt` IS NULL)

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
	`Src` `x`
WHERE
	`x`.`NullableInt` = 4 OR `x`.`NullableInt` IS NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	NOT (`x`.`NullableInt` = 4 OR `x`.`NullableInt` IS NULL)

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
	`Src` `x`
WHERE
	`x`.`NullableInt` IS NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Src` `x`
WHERE
	`x`.`NullableInt` IS NOT NULL

