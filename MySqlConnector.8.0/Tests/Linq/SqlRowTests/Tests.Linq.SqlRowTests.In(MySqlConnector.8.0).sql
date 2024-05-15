BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Ints`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`) IN ((1, `i`.`One` * 2))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`, `i`.`Three`) IN ((`i`.`One`, `i`.`One` * 2, `i`.`Four` - 1), (0, 7, 9), (NULL, -1, `i`.`Four`))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`, `i`.`Four`) IN ((`i`.`One`, `i`.`One` * 2, `i`.`Four` - 1), (0, 7, 9), (NULL, 2, `i`.`Four`))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Nil`, `i`.`Two`, `i`.`Four`) IN ((`i`.`One`, `i`.`One` * 2, `i`.`Four` - 1), (0, 7, 9), (NULL, 2, `i`.`Four`))

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Ints`

