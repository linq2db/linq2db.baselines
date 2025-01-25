BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NestingA`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `NestingA`
(
	`Property1` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NestingB`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `NestingB`
(
	`Property1` VARCHAR(4000)     NULL,
	`Property2` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NestingC`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `NestingC`
(
	`Property1` VARCHAR(4000)     NULL,
	`Property2` VARCHAR(4000)     NULL,
	`Property3` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

WITH `CTE_1` (`Property1`)
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
	`CTE_1` `c2`
		CROSS JOIN `NestingC` `t`
		CROSS JOIN `NestingC` `t_1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NestingC`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NestingB`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NestingA`

