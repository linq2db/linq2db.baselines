BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Ints`

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

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
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Ints` `i`
WHERE
	`i`.`One` IS NOT NULL AND `i`.`Two` IS NOT NULL AND
	`i`.`Three` IS NOT NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Ints` `i`
WHERE
	1 = 0

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Ints` `i`
WHERE
	1 = 0

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Ints`

