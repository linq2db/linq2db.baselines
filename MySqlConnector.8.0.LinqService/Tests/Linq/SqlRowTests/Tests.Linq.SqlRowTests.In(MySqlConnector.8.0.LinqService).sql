BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`) IN ((1, `i`.`One` * 2))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`, `i`.`Three`) IN ((`i`.`One`, `i`.`One` * 2, `i`.`Four` - 1), (0, 7, 9), (NULL, -1, `i`.`Four`))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`, `i`.`Four`) IN ((`i`.`One`, `i`.`One` * 2, `i`.`Four` - 1), (0, 7, 9), (NULL, 2, `i`.`Four`))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Nil`, `i`.`Two`, `i`.`Four`) IN ((`i`.`One`, `i`.`One` * 2, `i`.`Four` - 1), (0, 7, 9), (NULL, 2, `i`.`Four`))

