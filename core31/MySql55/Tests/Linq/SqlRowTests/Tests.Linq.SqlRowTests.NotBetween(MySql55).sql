BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Ints`

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `i`
WHERE
	((`i`.`One`, `i`.`Two`) < (`i`.`One`, `i`.`One` * 2) OR (`i`.`One`, `i`.`Two`) > (`i`.`One`, `i`.`One` + `i`.`One`))

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `i`
WHERE
	((`i`.`One`, `i`.`Three`) < (`i`.`One`, `i`.`One`) OR (`i`.`One`, `i`.`Three`) > (`i`.`One`, `i`.`Four`))

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `i`
WHERE
	((`i`.`One`, `i`.`Two`) < (`i`.`One`, `i`.`Three`) OR (`i`.`One`, `i`.`Two`) > (`i`.`One`, `i`.`Two`))

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `i`
WHERE
	((`i`.`Two`, `i`.`Five`) < (`i`.`One`, `i`.`One`) OR (`i`.`Two`, `i`.`Five`) > (`i`.`Three`, `i`.`Two`))

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `i`
WHERE
	((`i`.`Two`, `i`.`Five`) < (`i`.`One`, `i`.`One`) OR (`i`.`Two`, `i`.`Five`) > (`i`.`Two`, `i`.`Two`))

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `i`
WHERE
	((`i`.`Two`, `i`.`Nil`) < (`i`.`One`, `i`.`One`) OR (`i`.`Two`, `i`.`Nil`) > (`i`.`Three`, `i`.`One`))

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `i`
WHERE
	((`i`.`Two`, `i`.`Nil`) < (`i`.`Two`, `i`.`One`) OR (`i`.`Two`, `i`.`Nil`) > (`i`.`Two`, `i`.`Three`))

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `i`
WHERE
	((`i`.`Two`, `i`.`Five`) < (`i`.`One`, `i`.`Nil`) OR (`i`.`Two`, `i`.`Five`) > (`i`.`Three`, `i`.`Nil`))

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `i`
WHERE
	((`i`.`Two`, `i`.`Nil`) < (`i`.`One`, `i`.`Nil`) OR (`i`.`Two`, `i`.`Nil`) > (`i`.`Three`, `i`.`Nil`))

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Ints` `i`
WHERE
	((`i`.`Two`, `i`.`Two`) < (`i`.`Nil`, `i`.`One`) OR (`i`.`Two`, `i`.`Two`) > (`i`.`Three`, `i`.`Five`))

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Ints`

