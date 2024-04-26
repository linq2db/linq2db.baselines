BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Ints`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	`i`.`One` IS NOT NULL AND `i`.`Two` IS NOT NULL AND
	`i`.`Three` IS NOT NULL

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	1 = 0

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	1 = 0

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Ints`

