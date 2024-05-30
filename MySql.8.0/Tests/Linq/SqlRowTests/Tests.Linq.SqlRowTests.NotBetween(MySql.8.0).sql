BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Ints`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`One`, `i`.`Two`) >= (`i`.`One`, `i`.`One` * 2) AND (`i`.`One`, `i`.`Two`) <= (`i`.`One`, `i`.`One` + `i`.`One`))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`One`, `i`.`Three`) >= (`i`.`One`, `i`.`One`) AND (`i`.`One`, `i`.`Three`) <= (`i`.`One`, `i`.`Four`))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`) < (`i`.`One`, `i`.`Three`)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND (`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Two`))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND (`i`.`Two`, `i`.`Five`) <= (`i`.`Two`, `i`.`Two`))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`One`) AND (`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`One`))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Nil`) >= (`i`.`Two`, `i`.`One`) AND (`i`.`Two`, `i`.`Nil`) <= (`i`.`Two`, `i`.`Three`))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`Nil`) AND (`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Nil`))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`Nil`) AND (`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`Nil`))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Two`) >= (`i`.`Nil`, `i`.`One`) AND (`i`.`Two`, `i`.`Two`) <= (`i`.`Three`, `i`.`Five`))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Ints`

