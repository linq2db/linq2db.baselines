-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Ints` `x`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Three`) = (
		SELECT
			`y`.`One`,
			`y`.`One` + 1 as `c1`,
			3 as `c2`
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
			`y`.`One` + 1 as `c1`,
			3 as `c2`
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
			`y`.`One` + 1 as `c1`,
			3 as `c2`
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
			`y`.`One` + 1 as `c1`,
			4 as `c2`
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
			`y`.`One` + 1 as `c1`,
			4 as `c2`
		FROM
			`Ints2` `y`
		WHERE
			`y`.`Nil` IS NULL
	)

