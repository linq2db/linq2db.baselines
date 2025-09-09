BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`One`, `i`.`Two`) >= (`i`.`One`, `i`.`One` * 2) AND (`i`.`One`, `i`.`Two`) <= (`i`.`One`, `i`.`One` + `i`.`One`))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`One`, `i`.`Three`) >= (`i`.`One`, `i`.`One`) AND (`i`.`One`, `i`.`Three`) <= (`i`.`One`, `i`.`Four`))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`) < (`i`.`One`, `i`.`Three`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND (`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Two`))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND (`i`.`Two`, `i`.`Five`) <= (`i`.`Two`, `i`.`Two`))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`One`) AND (`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`One`))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Nil`) >= (`i`.`Two`, `i`.`One`) AND (`i`.`Two`, `i`.`Nil`) <= (`i`.`Two`, `i`.`Three`))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`Nil`) AND (`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Nil`))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`Nil`) AND (`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`Nil`))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Two`) >= (`i`.`Nil`, `i`.`One`) AND (`i`.`Two`, `i`.`Two`) <= (`i`.`Three`, `i`.`Five`))

