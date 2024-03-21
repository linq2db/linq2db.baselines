﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Ints`

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Ints2`

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `x`,
	`Ints2` `y`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Three`) = (`y`.`One`, `y`.`One` + 1, 3) AND
	`y`.`Nil` IS NULL

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `x`,
	`Ints2` `y`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Three`) = (`y`.`One`, `y`.`One` + 1, 3) AND
	`y`.`Nil` IS NULL

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `x`,
	`Ints2` `y`
WHERE
	(`y`.`One`, `y`.`One` + 1, 3) = (`x`.`One`, `x`.`Two`, `x`.`Three`) AND
	`y`.`Nil` IS NULL

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `x`,
	`Ints2` `y`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Three`) <> (`y`.`One`, `y`.`One` + 1, 4) AND
	`y`.`Nil` IS NULL

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `x`,
	`Ints2` `y`
WHERE
	(`x`.`One`, `x`.`Two`, `x`.`Three`) <> (`y`.`One`, `y`.`One` + 1, 4) AND
	`y`.`Nil` IS NULL

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Ints2`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Ints`

