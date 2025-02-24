BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `x`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Nil`) > (
		SELECT
			`y`.`One`,
			`y`.`One`,
			3
		FROM
			`Ints2` `y`
		WHERE
			`y`.`Nil` IS NULL
	)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `x`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Three`) >= (
		SELECT
			`y`.`One`,
			`y`.`One` + 1,
			3
		FROM
			`Ints2` `y`
		WHERE
			`y`.`Nil` IS NULL
	)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `x`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Nil`) < (
		SELECT
			`y`.`One`,
			`y`.`Three`,
			3
		FROM
			`Ints2` `y`
		WHERE
			`y`.`Nil` IS NULL
	)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `x`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Three`) <= (
		SELECT
			`y`.`One`,
			`y`.`One` + 1,
			3
		FROM
			`Ints2` `y`
		WHERE
			`y`.`Nil` IS NULL
	)

