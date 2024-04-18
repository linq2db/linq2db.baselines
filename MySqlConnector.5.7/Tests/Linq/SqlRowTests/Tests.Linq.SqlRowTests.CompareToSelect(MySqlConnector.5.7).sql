﻿BeforeExecute
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Ints2`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Ints2`
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

INSERT INTO `Ints2`
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Count(*)
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Count(*)
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Count(*)
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Count(*)
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

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Ints2`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Ints`

