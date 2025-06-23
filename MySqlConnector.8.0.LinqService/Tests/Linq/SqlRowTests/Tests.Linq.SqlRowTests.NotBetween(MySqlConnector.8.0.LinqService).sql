BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`One`, `i`.`Two`) >= (`i`.`One`, `i`.`One` * 2) AND (`i`.`One`, `i`.`Two`) <= (`i`.`One`, `i`.`One` + `i`.`One`))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`One`, `i`.`Three`) >= (`i`.`One`, `i`.`One`) AND (`i`.`One`, `i`.`Three`) <= (`i`.`One`, `i`.`Four`))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT (`i`.`One`, `i`.`Two`) >= (`i`.`One`, `i`.`Three`)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND (`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Two`))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND (`i`.`Two`, `i`.`Five`) <= (`i`.`Two`, `i`.`Two`))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`One`) AND (`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`One`))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Nil`) >= (`i`.`Two`, `i`.`One`) AND (`i`.`Two`, `i`.`Nil`) <= (`i`.`Two`, `i`.`Three`))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`Nil`) AND (`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Nil`))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`Nil`) AND (`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`Nil`))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Two`) >= (`i`.`Nil`, `i`.`One`) AND (`i`.`Two`, `i`.`Two`) <= (`i`.`Three`, `i`.`Five`))

