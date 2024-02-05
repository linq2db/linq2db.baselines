BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NestingA`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `NestingA`
(
	`Property1` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NestingB`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `NestingB`
(
	`Property1` VARCHAR(4000)     NULL,
	`Property2` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NestingC`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `NestingC`
(
	`Property1` VARCHAR(4000)     NULL,
	`Property2` VARCHAR(4000)     NULL,
	`Property3` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

WITH `CTE_1` (`Property2`)
AS
(
	SELECT
		`a`.`Property2`
	FROM
		`NestingC` `a`
)
SELECT
	`c2`.`Property1`,
	`t_1`.`Property2`,
	`t_1`.`Property3`
FROM
	(
		SELECT
			`c1`.`Property2` as `Property1`
		FROM
			`CTE_1` `c1`,
			`NestingC` `t`
	) `c2`,
	`NestingC` `t_1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NestingC`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NestingB`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NestingA`

