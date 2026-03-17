-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Ints` `x`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Three`) = (
		SELECT
			`y`.`One`,
			`y`.`One` + 1,
			3
		FROM
			`Ints2` `y`
		WHERE
			`y`.`Nil` IS NULL
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Ints` `x`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Three`) = (
		SELECT
			`y`.`One`,
			`y`.`One` + 1,
			3
		FROM
			`Ints2` `y`
		WHERE
			`y`.`Nil` IS NULL
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Ints` `x`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Three`) = (
		SELECT
			`y`.`One`,
			`y`.`One` + 1,
			3
		FROM
			`Ints2` `y`
		WHERE
			`y`.`Nil` IS NULL
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Ints` `x`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Three`) <> (
		SELECT
			`y`.`One`,
			`y`.`One` + 1,
			4
		FROM
			`Ints2` `y`
		WHERE
			`y`.`Nil` IS NULL
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Ints` `x`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Three`) <> (
		SELECT
			`y`.`One`,
			`y`.`One` + 1,
			4
		FROM
			`Ints2` `y`
		WHERE
			`y`.`Nil` IS NULL
	)

