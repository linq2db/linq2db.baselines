BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Ints`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Ints`
(
	`One`   INT NOT NULL,
	`Two`   INT NOT NULL,
	`Three` INT NOT NULL,
	`Four`  INT NOT NULL,
	`Five`  INT NOT NULL,
	`Nil`   INT     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Ints`
(
	`One`,
	`Two`,
	`Three`,
	`Four`,
	`Five`,
	`Nil`
)
VALUES
(1,2,3,4,5,NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`) >= (`i`.`One`, `i`.`One` * 2) AND
	(`i`.`One`, `i`.`Two`) <= (`i`.`One`, `i`.`One` + `i`.`One`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Three`) >= (`i`.`One`, `i`.`One`) AND
	(`i`.`One`, `i`.`Three`) <= (`i`.`One`, `i`.`Four`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`) >= (`i`.`One`, `i`.`Three`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Two`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Five`) <= (`i`.`Two`, `i`.`Two`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`One`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Nil`) >= (`i`.`Two`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Nil`) <= (`i`.`Two`, `i`.`Three`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`Nil`) AND
	(`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Nil`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`Nil`) AND
	(`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`Nil`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Two`) >= (`i`.`Nil`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Two`) <= (`i`.`Three`, `i`.`Five`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Ints`

