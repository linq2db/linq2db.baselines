-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

