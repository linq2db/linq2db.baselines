BeforeExecute
-- MariaDB MySql

CREATE TABLE `NestingA`
(
	`Property1` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql

CREATE TABLE `NestingB`
(
	`Property1` VARCHAR(255)     NULL,
	`Property2` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql

CREATE TABLE `NestingC`
(
	`Property1` VARCHAR(255)     NULL,
	`Property2` VARCHAR(255)     NULL,
	`Property3` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql

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
-- MariaDB MySql

DROP TABLE IF EXISTS `NestingC`

BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `NestingB`

BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `NestingA`

