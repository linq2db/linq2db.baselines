-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`) >= (`i`.`One`, `i`.`One` * 2) AND
	(`i`.`One`, `i`.`Two`) <= (`i`.`One`, `i`.`One` + `i`.`One`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Three`) >= (`i`.`One`, `i`.`One`) AND
	(`i`.`One`, `i`.`Three`) <= (`i`.`One`, `i`.`Four`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`) >= (`i`.`One`, `i`.`Three`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Two`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Five`) <= (`i`.`Two`, `i`.`Two`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`One`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Nil`) >= (`i`.`Two`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Nil`) <= (`i`.`Two`, `i`.`Three`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`Nil`) AND
	(`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Nil`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`Nil`) AND
	(`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`Nil`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Two`) >= (`i`.`Nil`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Two`) <= (`i`.`Three`, `i`.`Five`)

