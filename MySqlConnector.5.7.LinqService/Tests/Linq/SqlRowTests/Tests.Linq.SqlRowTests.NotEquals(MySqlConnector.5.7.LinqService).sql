BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Ints`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @One Int32
SET     @One = 1
DECLARE @Two Int32
SET     @Two = 2
DECLARE @Three Int32
SET     @Three = 3
DECLARE @Four Int32
SET     @Four = 4
DECLARE @Five Int32
SET     @Five = 5
DECLARE @Nil Int32
SET     @Nil = NULL

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
(
	@One,
	@Two,
	@Three,
	@Four,
	@Five,
	@Nil
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`, `i`.`Three`) <> (`i`.`One`, `i`.`One` * 2, `i`.`Four` - 1)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`, `i`.`Four`) <> (`i`.`One`, `i`.`Two`, `i`.`Three`)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Nil`, `i`.`Three`) <> (`i`.`One`, `i`.`Two`, `i`.`Three`)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(1, `i`.`Nil`, 4) <> (`i`.`One`, `i`.`Nil`, `i`.`Three`)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(1, NULL, 4) <> (`i`.`One`, `i`.`Nil`, `i`.`Three`)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Ints`

